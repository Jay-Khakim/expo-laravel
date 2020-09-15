<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;

class Staff extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    // use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'branche_id',
        'status',
        'name_en',
        'name_uz',
        'name_ru',
        'position_en',
        'position_uz',
        'position_ru',
        'image',
        'reception_time_en',
        'reception_time_uz',
        'reception_time_ru',
        'email',
        'facebook',
        'linkedin',
        'twitter',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'branche_id' => 'integer',
    ];
    
    public function branche()
    {
        return $this->belongsTo(\App\Models\Branche::class);
    }

    public function setImageAttribute($value)
    {
        $attribute_name = "image";
        $disk = "public";
        $destination_path = "staff";
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
            // dd($value);
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
        \Storage::disk('public')->delete($value->image);
        });
    }
    
}
