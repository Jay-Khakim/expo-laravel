<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStaffTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('branche_id');
            $table->enum('status', ["main","local","international","sud"]);
            $table->string('name_en', 300);
            $table->string('name_uz', 300);
            $table->string('name_ru', 300);
            $table->string('position_en', 300);
            $table->string('position_uz', 300);
            $table->string('position_ru', 300);
            $table->string('image', 300);
            $table->string('reception_time_en', 300)->nullable();
            $table->string('reception_time_uz', 300)->nullable();
            $table->string('reception_time_ru', 300)->nullable();
            $table->string('email', 100)->nullable();
            $table->string('facebook')->nullable();
            $table->string('linkedin')->nullable();
            $table->string('twitter')->nullable();
            $table->softDeletes();
            $table->timestamps();
            $table->foreign('branche_id')
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
        Schema::dropIfExists('staff');
    }
}
