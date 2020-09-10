<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Membership extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use SoftDeletes;

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
    ];
}
