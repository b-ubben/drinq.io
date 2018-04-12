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

    public $successStatus = 200;

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
            // using laravel passport to log in
        	$user_data = array(
        		'username'	=>	$request->username,
        		'password'	=>	$request->password,
        	);

        	if(Auth::attempt($user_data)) {
                // get the user that logged in
        		$user = Auth::user();
                // create the new token on every log-in
                $success['token'] = $user->createToken('drinq')->accessToken;

                // return response with access token
                    return Response::json(
                        array(
                            'status' => $this->successStatus,
                            'message' => "Successfully logged in!",
                            'reason' => "User logged in successfully.",
                            'token' =>  $success['token'],
                    ), $this->successStatus
                );
            } else {
                $this->successStatus = 401;
                return Response::json(
                        array(
                            'status' => $this->successStatus,
                            'message' => "Failed to log in.",
                            'reason' => "Please check your credentials and try again.",
                    ), $this->successStatus
                );
            }
        }
    }

    // get all user details. meant to be used for testing only.
    public function getDetails() {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }

    // perform logout of user
    public function performLogout() {
        // easy. if user is logged in, delete their token.
        if (Auth::check()) {
            Auth::user()->AauthAccessToken()->delete();
            return Response::json(
                    array(
                        'status' => $this->successStatus,
                        'message' => "User logged out.",
                        'reason' => "User logged out successfully.",
                ), $this->successStatus
            );
        }
    }
}
