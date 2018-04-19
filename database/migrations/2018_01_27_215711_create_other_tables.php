<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOtherTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // define user reviews table
        Schema::create('reviews', function(Blueprint $table) {
            // all columns for the reviews tables
            $table->increments('review_id');
            $table->integer('location_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->tinyInteger('rating');
            $table->string('review_tagline');
            $table->text('review');
            $table->timestamps();
        });

        // define the locations table, just commented out fields we don't need anymore.
        Schema::create('locations', function (Blueprint $table) {
            $table->increments('location_id');
            $table->string('g_location_id')->nullable(false); //remove
            $table->string('location_name')->nullable(false);
            $table->string('categories')->nullable(false); //remove
            $table->string('rating')->nullable(false); //remove
            $table->string('latitude')->nullable(false);
            $table->string('longitude')->nullable(false);
            $table->string('price')->nullable(false); //remove
            $table->string('address')->nullable(false);
            $table->string('city')->nullable(false);
            $table->string('zip_code')->nullable(false);
            $table->string('country')->nullable(false);
            $table->string('state')->nullable(false);
            $table->string('display_phone')->nullable(false);
            $table->timestamps();
        });

        // define the items table
        Schema::create('items', function (Blueprint $table) {
            $table->increments('item_id');
            $table->integer('location_id')->unsigned();
            $table->string('item_name');
            $table->text('item_description');
            $table->string('item_category');
            $table->decimal('item_price', 15, 2);
            $table->timestamps();
        });

        // define the happy hours table
        Schema::create('happy_hours', function(Blueprint $table) {
            $table->increments('hours_id');
            $table->integer('location_id')->unsigned();
            $table->string("day");
            $table->string("start_time");
            $table->string("end_time");
            $table->timestamps();
        });

        // define all of the relationships with primary and foreign keys

        // define reviews table relationship with location table
        Schema::table('reviews', function($table) {
            // FK constraints for users
            $table->foreign('user_id')
                  ->references('user_id')
                  ->on('users');
            $table->foreign('location_id')
                  ->references('location_id')
                  ->on('locations');
        });

        // define items table
        Schema::table('items', function($table) {
            // defining all of the FK constraints for reviews
            $table->foreign('location_id')
                  ->references('location_id')
                  ->on('locations');
        });

        // FK constraints on items
        Schema::table('happy_hours', function($table) {
            // defining all of the FK constraints for reviews
            $table->foreign('location_id')
                  ->references('location_id')
                  ->on('locations');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // drop the database when running migrations
        Schema::dropIfExists('reviews');
        Schema::dropIfExists('locations');
        Schema::dropIfExists('items');
        Schema::dropIfExists('happy_hours');
    }
}