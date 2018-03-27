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
        	"password"	=>	"required"
        );

        // start validator and get the request received from the react application
        $validator = Validator::make($request->all(), $rules);

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
        	
        }
    }

    // perform logout of user
    public function performLogout() {
        
    }
}
