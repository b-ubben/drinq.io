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

class RegistrationController extends Controller
{
    //
    public function registerUser(Request $request) {

    	// initiate rules for validation.
    	$rules = array(
    		'username'	=>	'required|alphaNum|unique:users',
    		'email'		=>	'required|unique:users,email',
    		'password'	=>	'required|alphaNum|between:5,255',
    	);

    	// // initiate validator, and get all form fields
    	$validator = Validator::make($request->only("username", "email", "password"), $rules);

    	// if validator fails, flash messages and return all field items except the password
    	if($validator->fails()) {
    		return Response::json(
	    			array(
		            'status' => 666,
                    'message' => "Could not create user",
		            'reason' => $validator->messages()
	        	), 500
	        );
    	} else {
    		// if it succeeds, get all inputs and put them into the model
    		$new_user = new User;
    		// acquire password, then hash it
    		$password = $request->password;
    		// hash password
    		$hashed_pw = Hash::make($password);

    		// get all form fields and add them to the model. anything classified as fillable can be added here
    		$new_user->username = $request->username;
    		$new_user->email = $request->email;
            $new_user->zip_code = 0;
    		$new_user->password = $hashed_pw;

    		// save the user to the database
    		$new_user->save();

    		// attach the default role of user - not admin
    		$new_user->roles()->attach(2);

    		// flash the message that the account was created
            return Response::json(
                    array(
                    'status' => 200,
                    'message' => "User created!",
                    'reason' => "User created successfully."
                ), 200
            );
    	}
    }
}
