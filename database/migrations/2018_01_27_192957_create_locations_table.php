<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('locations', function (Blueprint $table) {
            $table->increments('location_id');
            $table->string('g_location_id')->nullable(false);
            $table->string('location_name')->nullable(false);
            $table->string('categories')->nullable(false);
            $table->string('rating')->nullable(false);
            $table->string('latitude')->nullable(false);
            $table->string('longitude')->nullable(false);
            $table->string('price')->nullable(false);
            $table->string('address')->nullable(false);
            $table->string('city')->nullable(false);
            $table->string('zip_code')->nullable(false);
            $table->string('country')->nullable(false);
            $table->string('state')->nullable(false);
            $table->string('display_phone')->nullable(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('locations');
    }
}
