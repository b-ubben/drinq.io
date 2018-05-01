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
| NOTE: This API is NOT FOLLOWING REST API CONVENTIONS!!!!!
| THIS WILL BE CHANGED IN VERSION 2 OF THE APPLICATION!!!!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// any actions that REQUIRE authentication, like adding comments, etc. the routes will be in here.
Route::group(['middleware' => 'auth:api'], function() {
	// routes related to user profile, updating, etc.
	Route::get('profile', 'ProfileController@getUserProfile');

	// routes related to adding happy hours
	Route::post('addhours', array('uses' => 'HappyhoursController@addHappyHours'));
	Route::put('flaghour', array('uses' => 'HappyhoursController@flagHappyHour'));
	Route::post('auth/logout', array('uses' => 'AuthController@performLogout'));
});

// authentication related routes
Route::post('register', array('uses' => 'RegistrationController@registerUser'));
Route::post('auth/login', array('uses' => 'AuthController@performLogin'));

// happy hour related routes.
Route::get('happyhours', array('uses' => 'HappyhoursController@getHappyHours'));
Route::get('happyhours/{zip}', array('uses' => 'HappyhoursController@getHappyHoursZip'));

// test route for testing. duh. useful for when deploying the app and testing whether the api route works
Route::get('status', function (){
    return Response::json(array(
    	"status" => 200,
    	"message" => "System Operational."
    ), 200); 
});