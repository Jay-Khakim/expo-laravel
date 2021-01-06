<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\News;
use App\Models\Branche;
use App\Models\Membership;
use App\Models\Movie;
use App\Models\Picture;
use App\Models\Staff;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Mail;

class PageController extends Controller
{   
    // Main
    public function index(){
        $category = Category::where('name_en', 'Upcoming enent')->first();
        $banner_news = News::where('type', 'event')
        ->where('category_id', 6)
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->take(2)
        ->get();
        $id = count(News::all());

        $latests = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        // ->skip(2)
        ->take(2)
        ->get();
        // dd($latests);
        $right_side_latests = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->skip(2)
        ->take(4)
        ->get();
        // dd($banner_news);

        $main_employers = Staff::where('status', 'main')->take(5)->get();
        $territorial_employers = Staff::where('status', 'local')->with('branche')->take(5)->get();
        // dd($main_employers);
        return view('index')->with(compact('banner_news', 'latests', 'right_side_latests', 'main_employers', 'territorial_employers'));
    }

    // Assaciation
    public function headquater(){

        $main_employers= Staff::where('status', 'main')->paginate(5);
        return view('association.headquater')->with(compact('main_employers'));
    }

    public function about(){
        return view('association.about');
    }

    public function service(){
        return view('association.service');
    }

    public function territorial(){
        $territorial_employers= Staff::where('status', 'local')->paginate(5);

        return view('association.territorial_devision')->with(compact('territorial_employers'));
    }

    public function foreign(){
        $foreign_employers= Staff::where('status', 'international')->paginate(5);

        return view('association.foreign_division')->with(compact('foreign_employers'));
    }

    public function scientific(){
        $scientific_employers= Staff::where('status', 'sud')->paginate(5);

        return view('association.scientific_division')->with(compact('scientific_employers'));
    }

    public function docs(){
        return view('association.docs');
    }

    // Membership 

    public function membership(){
        return view('membership.become_member');
    }

    public function memberlist(){

        // $members = Membership::where('status', 'active')->paginate(8);
        $members = Membership::paginate(16);
        return view('membership.members-list')->with(compact('members'));
    }

    public function single($language, $slug_en){

        $dt = Carbon::now();
        $member = Membership::where('slug_en', $slug_en)->first();
        // dd($member);
        return view('membership.single-member')->with(compact('member', 'dt'));
    }

    public function checkmember(){
        return view('membership.check-member');
    }

    public function check(){
        $dt = Carbon::now();
        $search_text = $_GET['check'];
        $member = Membership::where('inn', 'LIKE', '%'.$search_text.'%')->get();
        // dd($member);

        return view('membership.check-member')->with(compact('member', 'dt'));
    }

    public function benefits(){
        return view('membership.benefits');
    }

    public function memservice(){
        return view('membership.members-service');
    }

    // News

    public function news(){

        $latests = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->take(4)
        ->get();

        $id = count(News::all());
        
        $mains = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->skip(4)
        ->take($id-4)
        ->paginate(2);

        return view('news.news')->with(compact('latests','mains'));
    }

    public function singlenews($language, $id){

        $dt = Carbon::now();
        $single = News::where('id', $id)->first();

        $latests = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->take(4)
        ->get();

        // dd($member);
        return view('news.single-news')->with(compact('single', 'dt', 'latests'));
    }

    public function categorynews($language, $sleg_en){

        $dt = Carbon::now();

        $sleg_en = Category::where('slug_en', $sleg_en)->first();
        // dd($id);
        $mains = News::where('type', 'news')
        ->where('category_id', $sleg_en->id)
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        // ->skip(4)
        // ->take($id-4)
        ->paginate(2);

        // $single = News::where('slug_en', $slug_en)->first();

        $latests = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->take(4)
        ->get();

        // dd($member);
        return view('news.category-news')->with(compact( 'dt', 'sleg_en', 'latests', 'mains'));
    }

    public function events(){
        $news = News::where('type', 'event')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->paginate(6);

        return view('news.events')->with(compact('news'));
    } 

    public function press(){
        $news = News::where('type', 'pressreliese')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->paginate(4);

        return view('news.press')->with(compact('news'));
    } 

    //Information 
    public function statistics(){
        return view('information.statistics');
    }


    //Media
    public function video(){

        $latests = News::where('type', 'news')
        ->where('media_type', 'article')
        ->orderBy("created_at", "desc")
        ->take(4)
        ->get();

        $videos = News::where('media_type', 'video')
        ->orderBy('created_at', 'desc')
        ->paginate(5);
        return view('media.video')->with(compact('latests', 'videos'));
    }

    public function photo(){

        $photos = Picture::orderBy("created_at", "desc")
        ->paginate(8);
        return view('media.photo')->with(compact('photos'));
    }

    // Contacts
    public function contact(){
        return view('contact');
    }

    public function store(Request $request){
        dd($request->all());
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'phone'=>'required',
            "subject" => 'required',
            "message"=> "required"
        ]);

        Mail::send('contact-message', [
            'msg' =>$request->message
        ], function ($mail) use($request){
            $mail-> from($request->email, $request->name);

            $mail -> to('info@exportuz.com')->subject($request->subject);
        });

        return redirect()->back()->with('flash_message', 'Message has been sent successfully!');
    }

    // FAQ
    public function faq(){
        return view('faq');
    }
}
