<?php

namespace App\Http\Controllers;

// need all of these libraries for validation, requests, etc.
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;
use Auth;
use Session;
use Response;
use App\User;

class AuthController extends Controller
{
    // perform authentication of user into the system
    public function performLogin(Request $request) {
        // set up validation rules - just two fields
        $rules = array(
        	"username"	=>	"required|alphaNum",
        	"password"	=>	"required|alphaNum"
        );

        // start validator and get the request received from the react application
        $validator = Validator::make($request->only("username", "password"), $rules);

        // check if the validator fails, if it fails, return error response.
        if($validator->fails()) {
        	return Response::json(array(
        		"status" => 500,
        		"reason" => "Couldn't authenticate user.",
        		"message" => $validator->messages()
        	));
        } else {
        	// actually log the user in. will be using JWT to authenticate the user.
        	// on every auth, user will be given a different JWT that will be used to communicate w/ API and REACT
        	$user_data = array(
        		'username'	=>	$request->username,
        		'password'	=>	$request->password,
        	);

        	if(Auth::attempt($user_data)) {
        		// get authenticated user
        		$auth_user = Auth::user();

        		// generate the app_id token for the user
        		$api_token = substr(str_shuffle(str_repeat("0123456789abcdefghijklmnopqrstuvwxyz", 5)), 0, 60);
        		$user = \App\User::where('username', $request->username)->update(["api_token" => $api_token]);

        		return Response::json(array(
        			"status" => 200,
        			"message" => "User successfully authenticated",
        			"user_id" => $auth_user->user_id,
        			"username" => $auth_user->username,
        			"zip_code" => $auth_user->zip_code,
        			"api_token" => $auth_user->api_token
        		));                
            } else {
                return Response::json(array(
        			"status" => 500,
        			"message" => "Failed to authenticate user."
        		));       
            }
        }
    }

    // perform logout of user
    public function performLogout() {
        // no idea how logout is performed with JWT. will figure out.
    	$auth_user = Auth::id();
    	var_dump($auth_user);

        // Auth::logout();
        // echo "user logged out";
    }
}
