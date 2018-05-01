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

// any necessary models
use App\User;

class ProfileController extends Controller
{
    // get all user details. meant to be used for testing only.

	public $successStatus = 200;

    public function getUserProfile() {
    	// access the currently logged in user
        $user = Auth::user();

        // return all of the details of the user to JSON
        return Response::json(array(
            'status' => $this->successStatus,
            'message' => 'User profile successfully retrieved.',
            'reason' => $user,
        ));
    }
}
