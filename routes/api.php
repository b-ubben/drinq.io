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

// any actions that REQUIRE authentication, like adding comments, etc. the routes will be in here.
Route::group(['middleware' => 'auth:api'], function(){
	Route::post('get-details', 'AuthController@getDetails');
	Route::post('auth/logout', array('uses' => 'AuthController@performLogout'));
});

// authentication related routes
Route::post('register', array('uses' => 'RegistrationController@registerUser'));
Route::post('auth/login', array('uses' => 'AuthController@performLogin'));



// test route for testing. duh. useful for when deploying the app and testing whether the api route works
Route::get('test', function (){
    return Response::json(array(
    	"status" => 200,
    	"message" => "All's well in the API world. System Operational."
    ), 200); 
});