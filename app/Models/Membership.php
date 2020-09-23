<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;
use App\Http\Requests\CompanyRequest;


class Membership extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    // use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'status',
        'name_en',
        'name_uz',
        'name_ru',
        'slug_en',
        'certificate_number',
        'inn',
        'expiry_date',
        'desc_en',
        'desc_uz',
        'desc_ru',
        'file',
        'web',
        'email',
        'image',
        'phone',
        'address_en',
        'address_uz',
        'address_ru',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'expiry_date',
        'updated_at',
        "created_at",
        'deleted_at'
    ];
    protected $lang_fields =[
        'name', 'desc', 'address', 
    ];

    public function __get($attribute){
        if (in_array($attribute, $this->lang_fields)) { 
            $localeSpecificAttribute = $attribute.'_'.app()->getLocale();
            return $this->{$localeSpecificAttribute};
        }   
        return parent::__get($attribute);
    }



    // public function uploadPdfToDisk($value, $attribute_name, $disk, $destination_path)
    // {   
    //     $request = \Request::instance();
    //     dd($request);
    //     // if a new file is uploaded, delete the file from the disk
    //     if ($request->hasFile($attribute_name) &&
    //         $this->{$attribute_name} &&
    //         $this->{$attribute_name} != null) {
    //         \Storage::disk($disk)->delete($this->{$attribute_name});
    //         $this->attributes[$attribute_name] = null;
    //     }
    //     // if the file input is empty, delete the file from the disk
    //     if (is_null($value) && $this->{$attribute_name} != null) {
    //         \Storage::disk($disk)->delete($this->{$attribute_name});
    //         $this->attributes[$attribute_name] = null;
    //     }
    //     // if a new file is uploaded, store it on disk and its filename in the database
    //     if ($request->hasFile($attribute_name) && $request->file($attribute_name)->isValid()) {
    //         // 1. Generate a new file name
    //         $file = $request->file($attribute_name);
    //         $new_file_name = md5($file->getClientOriginalName().time()).'.'.$file->getClientOriginalExtension();
    //         // 2. Move the new file to the correct path
    //         // dd($destination_path);
            
    //         $file_path = $file->storeAs("/", $new_file_name, $disk);
    //         // dd($file_path);
    //         // 3. Save the complete path to the database
    //         // $this->attributes[$attribute_name] = $file_path;
    //         $this->attributes[$attribute_name] = $destination_path.'/'.$new_file_name;
    //     }
    // }
    public function setImageAttribute($value)
    {
        $attribute_name = "image";
        $disk = "public";
        $destination_path = "membership";
        // dd($value);
        // if the image was erased
        if ($value==null) {
            // delete the image from disk
            \Storage::disk($disk)->delete($this->{$attribute_name});

            // set null in the database column
            $this->attributes[$attribute_name] = null;
        }

        // if a base64 was sent, store it in the db
        if (Str::startsWith($value, 'data:image'))
        {
            // 0. Make the image
            $image = \Image::make($value)->encode('jpg', 90);
            // 1. Generate a filename.
            $filename = md5($value.time()).'.jpg';
            // dd($filename);
            // 2. Store the image on disk.
            \Storage::disk($disk)->put($destination_path.'/'.$filename, $image->stream());
            // 3. Save the path to the database
            $this->attributes[$attribute_name] = $destination_path.'/'.$filename;
            // dd(12);
        }
    } 

    public function setFileAttribute($value)
    {
        $attribute_name = "file";
        $disk = "public";
        $destination_path = "";

        // $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
        $request = \Request::instance();
        // dd($request);
        // if a new file is uploaded, delete the file from the disk
        if ($request->hasFile($attribute_name) &&
            $this->{$attribute_name} &&
            $this->{$attribute_name} != null) {
            \Storage::disk($disk)->delete($this->{$attribute_name});
            $this->attributes[$attribute_name] = null;
        }
        // if the file input is empty, delete the file from the disk
        if (is_null($value) && $this->{$attribute_name} != null) {
            \Storage::disk($disk)->delete($this->{$attribute_name});
            $this->attributes[$attribute_name] = null;
        }
        // if a new file is uploaded, store it on disk and its filename in the database
        if ($request->hasFile($attribute_name) && $request->file($attribute_name)->isValid()) {
            // 1. Generate a new file name
            $file = $request->file($attribute_name);
            $new_file_name = md5($file->getClientOriginalName().time()).'.'.$file->getClientOriginalExtension();
            // 2. Move the new file to the correct path
            // dd($destination_path);
            
            $file_path = $file->storeAs("/certificate", $new_file_name, $disk);
            // dd($file_path);
            // 3. Save the complete path to the database
            // $this->attributes[$attribute_name] = $file_path;
            $this->attributes[$attribute_name] = $destination_path.'/'.$new_file_name;
        }

        // return $this->attributes[$attribute_name]; // uncomment if this is a translatable field
    }

    
    public static function boot()
    {
        parent::boot();
        static::deleting(function($value) {
        \Storage::disk('public')->delete($value->file);
        \Storage::disk('public')->delete($value->image);
        });
    }

    

    // public static function boot()
    // {
    //     parent::boot();
    //     static::deleting(function($value) {
    //         \Storage::disk('uploads')->delete($value->file);
    //     });
    // }
}
