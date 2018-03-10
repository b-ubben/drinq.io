<?php

namespace App\Http\Controllers;

// need all of these libraries for validation
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;
use Auth;
use Session;
use App\User;

class RegistrationController extends Controller
{
    //
    public function registerUser() {

    	// initiate rules for validation.
    	$rules = array(
    		'username'	=>	'required|alphaNum|unique:users',
    		'email'		=>	'unique:users,email',
    		'password'	=>	'required|alphaNum|min:7|confirmed'
    		'passwordConf'	=>	'required|alphaNum|min:7'
    	);

    	// initiate validator, and get all form fields
    	$validator = Validator::make(Input::all(), $rules);

    	// if validator fails, flash messages and return all field items except the password
    	if($validator->fails()) {
    		return Redirect::to('register')->withErrors($validator)->withInput(Input::except('password'));
    	} else {
    		// if it succeeds, get all inputs and put them into the model
    		$new_user = new User;
    		// acquire password, then hash it
    		$password = Input::get("password");
    		// hash password
    		$hashed_pw = Hash::make($password);

    		// get all form fields and add them to the model. anything classified as fillable can be added here
    		$new_user->username = Input::get('username');
    		$new_user->email = Input::get('email');
    		$new_user->password = $hashed_pw;

    		// save the user to the database
    		$new_user->save();

    		// attach the default role of user
    		$new_user->roles->attach(2);

    		// flash the message that the account was created
    		Session::flash("acc_created", "Your account has been successfully created. Try logging in!");
    		// redirect back to login screen
    		return Redirect::to("login");
    	}
    }
}
