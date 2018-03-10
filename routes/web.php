<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::view('/{path?}', 'app')
     ->where('path', '.*')
     ->name('react');

// log in routes
Route::post('login', array('uses' => 'LoginController@performLogin'));
Route::get('logout', array('uses' => 'LoginController@performLogout'));

// register user routes routes
Route::post('register', array('uses' => 'RegistrationController@registerUser'));