<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;

class News extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    // use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'category_id',
        'type',
        'media_type',
        'title_en',
        'title_uz',
        'title_ru',
        'subtitle_en',
        'subtitle_uz',
        'subtitle_ru',
        'slug_en',
        'intro_en',
        'intro_uz',
        'intro_ru',
        'highlighted_en',
        'highlighted_uz',
        'highlighted_ru',
        'body_en',
        'body_uz',
        'body_ru',
        'conclusion_en',
        'conclusion_uz',
        'conclusion_ru',
        'author_en',
        'author_uz',
        'author_ru',
        'link',
        'image1',
        'image2',
        'image3',
        'image4',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'category_id' => 'integer',
    ];

    protected $lang_fields =[
        'title', 'subtitle', 'intro', 'highlighted', 'body', 'conclusion', 'author',
    ];

    public function __get($attribute){
        if (in_array($attribute, $this->lang_fields)) { 
            $localeSpecificAttribute = $attribute.'_'.app()->getLocale();
            return $this->{$localeSpecificAttribute};
        }   
        return parent::__get($attribute);
    }
    
    public function setImage1Attribute($value)
    {
        $attribute_name = "image1";
        $disk = "public";
        $destination_path = "news";
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

    public function setImage2Attribute($value)
    {
        $attribute_name = "image2";
        $disk = "public";
        $destination_path = "news";
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

    public function setImage3Attribute($value)
    {
        $attribute_name = "image3";
        $disk = "public";
        $destination_path = "news";
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

    public function setImage4Attribute($value)
    {
        $attribute_name = "image4";
        $disk = "public";
        $destination_path = "news";
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
    public static function boot()
    {
        parent::boot();
        static::deleting(function($value) {
            if($value->image1 !== 'NULL'){
                \Storage::disk('public')->delete($value->image1);
            }
            if($value->image2 !== 'NULL'){
                \Storage::disk('public')->delete($value->image2);
            }
            if($value->image3 !== 'NULL'){
                \Storage::disk('public')->delete($value->image3);
            }
            if($value->image4 !== 'NULL'){
                \Storage::disk('public')->delete($value->image4);
            }
        
        // \Storage::disk('public')->delete($value->image2);
        // \Storage::disk('public')->delete($value->image3);
        // \Storage::disk('public')->delete($value->image4);
        });
    }

    public function category()
    {
        return $this->belongsTo(\App\Models\Category::class);
    }

}
