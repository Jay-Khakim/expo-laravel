<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Membership;
use Faker\Generator as Faker;

$factory->define(Membership::class, function (Faker $faker) {
    return [
        'status' => $faker->randomElement(["active","inactive"]),
        'name_en' => $faker->word,
        'name_uz' => $faker->word,
        'name_ru' => $faker->word,
        'slug_en' => $faker->word,
        'certificate_number' => $faker->numberBetween(-10000, 10000),
        'inn' => $faker->numberBetween(-10000, 10000),
        'expiry_date' => $faker->date(),
        'desc_en' => $faker->text,
        'desc_uz' => $faker->text,
        'desc_ru' => $faker->text,
        'file' => $faker->word,
        'web' => $faker->word,
        'email' => $faker->safeEmail,
        'phone' => $faker->phoneNumber,
        'address_en' => $faker->word,
        'address_uz' => $faker->word,
        'address_ru' => $faker->word,
    ];
});
