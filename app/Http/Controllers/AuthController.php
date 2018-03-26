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
    // perform the actual logging in to the system
    public function performLogin() {
        // code goes here to start a login 
    }

    // perform logout of application
    public function performLogout() {
        
    }
}
