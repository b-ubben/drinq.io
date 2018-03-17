<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// log in routes
Route::post('login', array('uses' => 'LoginController@performLogin'));
Route::get('logout', array('uses' => 'LoginController@performLogout'));

// register user routes routes
Route::post('register', array('uses' => 'RegistrationController@registerUser'));

Route::get('test', function (){
    return response([1,2,3,4],200);   
});