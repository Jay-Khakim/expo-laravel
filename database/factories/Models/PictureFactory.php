<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Picture;
use Faker\Generator as Faker;

$factory->define(Picture::class, function (Faker $faker) {
    return [
        'name_en' => $faker->word,
        'name_uz' => $faker->word,
        'name_ru' => $faker->word,
        'image' => $faker->word,
    ];
});
