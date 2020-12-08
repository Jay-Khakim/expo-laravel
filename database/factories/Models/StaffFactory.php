<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Staff;
use Faker\Generator as Faker;

$factory->define(Staff::class, function (Faker $faker) {
    return [
        'branche_id' => factory(\App\Models\Branche::class),
        'status' => $faker->randomElement(["main","local","international","sud"]),
        'name_en' => $faker->word,
        'name_uz' => $faker->word,
        'name_ru' => $faker->word,
        'position_en' => $faker->word,
        'position_uz' => $faker->word,
        'position_ru' => $faker->word,
        'reception_time_en' => $faker->word,
        'reception_time_uz' => $faker->word,
        'reception_time_ru' => $faker->word,
        'email' => $faker->safeEmail,
        'facebook' => $faker->word,
        'linkedin' => $faker->word,
        'twitter' => $faker->word,
    ];
});
