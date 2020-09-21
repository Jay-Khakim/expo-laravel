<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Branche extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    // use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name_en',
        'name_uz',
        'name_ru',
        'image',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
    ];


    public function staff()
    {
        return $this->hasMany(\App\Models\Staff::class);
    }

    protected $lang_fields =[
        'name', 'position', 'reception_time'
    ];

    public function __get($attribute){
        if (in_array($attribute, $this->lang_fields)) { 
            $localeSpecificAttribute = $attribute.'_'.app()->getLocale();
            return $this->{$localeSpecificAttribute};
        }   
        return parent::__get($attribute);
    }
}
