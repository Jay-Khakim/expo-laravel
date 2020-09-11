<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Staff extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use SoftDeletes;

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

}
