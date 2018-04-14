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
    public $successStatus = 200;

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
    		// if it succeeds, get all request_paramss and put them into the model.

            // get all of the items in the request
            $request_params = $request->all();
            // encrypt the password upon user creation
            $request_params['password'] = bcrypt($request_params['password']);
            // save & create new user into the database
            $user = User::create($request_params);
            // give user role of normal user
            $user->roles()->attach(2);

            // create the token under our drinq app and return the username
            $success['token'] = $user->createToken('drinq')->accessToken;
            $success['name'] = $user->username;


    		// flash the message that the account was created
            return Response::json(
                    array(
                        'status' => $this->successStatus,
                        'message' => "User created!",
                        'reason' => "User created successfully.",
                        'username' => $success['name'],
                        'token' =>  $success['token'],
                ), $this->successStatus
            );
    	}
    }
}