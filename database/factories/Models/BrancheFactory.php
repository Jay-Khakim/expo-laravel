<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Branche;
use Faker\Generator as Faker;

$factory->define(Branche::class, function (Faker $faker) {
    return [
        'name_en' => $faker->word,
        'name_uz' => $faker->word,
        'name_ru' => $faker->word,
        'image' => $faker->word,
    ];
});
