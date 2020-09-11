<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'category_id',
        'type',
        'title_en',
        'title_uz',
        'title_ru',
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


    public function category()
    {
        return $this->belongsTo(\App\Models\Category::class);
    }

    public function category()
    {
        return $this->belongsTo(\App\Models\Category::class);
    }
}
