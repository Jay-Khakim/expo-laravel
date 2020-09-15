<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('category_id');
            $table->enum('type', ["news","article","pressreliese","event"]);
            $table->string('title_en', 500);
            $table->string('title_uz', 500);
            $table->string('title_ru', 500);
            $table->string('slug_en', 300)->unique()->nullable();
            $table->longText('intro_en');
            $table->longText('intro_uz');
            $table->longText('intro_ru');
            $table->string('highlighted_en', 500)->nullable();
            $table->string('highlighted_uz', 500)->nullable();
            $table->string('highlighted_ru', 500)->nullable();
            $table->longText('body_en')->nullable();
            $table->longText('body_uz')->nullable();
            $table->longText('body_ru')->nullable();
            $table->longText('conclusion_en')->nullable();
            $table->longText('conclusion_uz')->nullable();
            $table->longText('conclusion_ru')->nullable();
            $table->string('author_en', 100)->nullable();
            $table->string('author_uz', 100)->nullable();
            $table->string('author_ru', 100)->nullable();
            $table->mediumText('image1');
            $table->mediumText('image2')->nullable();
            $table->mediumText('image3')->nullable();
            $table->mediumText('image4')->nullable();
            $table->softDeletes();
            $table->timestamps();
            $table->foreign('category_id')
                ->references('id')
                ->on('categories')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('news');
    }
}
