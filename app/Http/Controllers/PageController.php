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

class PageController extends Controller
{
    public function index(){
        $category = Category::where('name_en', 'Main banner')->first();
        // dd($category->id);
        $banner_news = News::where('category_id', $category->id)
        ->orderBy("id", "desc")
        ->take(4)
        ->get();
        
        $latests = News::where('category_id', '>', $category->id)
        ->orderBy("id", "desc")
        ->take(2)
        ->get();

        $right_side_latests = News::where('category_id', '>', $category->id+1)
        ->orderBy("id", "desc")
        ->take(4)
        ->get();
        // dd($banner_news);

        $main_employers = Staff::where('status', 'main')->take(5)->get();
        $territorial_employers = Staff::where('status', 'local')->with('branche')->take(5)->get();
        // dd($main_employers);
        return view('index')->with(compact('banner_news', 'latests', 'right_side_latests', 'main_employers', 'territorial_employers'));
    }

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
}
