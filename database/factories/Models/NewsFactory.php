<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\News;
use Faker\Generator as Faker;

$factory->define(News::class, function (Faker $faker) {
    return [
        'category_id' => factory(\App\Models\Category::class),
        'type' => $faker->randomElement(["news","article","pressreliese","event"]),
        'title_en' => $faker->word,
        'title_uz' => $faker->word,
        'title_ru' => $faker->word,
        'slug_en' => $faker->word,
        'intro_en' => $faker->text,
        'intro_uz' => $faker->text,
        'intro_ru' => $faker->text,
        'highlighted_en' => $faker->word,
        'highlighted_uz' => $faker->word,
        'highlighted_ru' => $faker->word,
        'body_en' => $faker->text,
        'body_uz' => $faker->text,
        'body_ru' => $faker->text,
        'conclusion_en' => $faker->text,
        'conclusion_uz' => $faker->text,
        'conclusion_ru' => $faker->text,
        'author_en' => $faker->word,
        'author_uz' => $faker->word,
        'author_ru' => $faker->word,
        'image1' => $faker->word,
        'image2' => $faker->word,
        'image3' => $faker->word,
        'image4' => $faker->word,
    ];
});
