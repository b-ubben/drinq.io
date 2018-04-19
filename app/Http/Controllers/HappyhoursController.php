<?php

namespace App\Http\Controllers;

// necessary libraries
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;
use Auth;
use Session;
use Response;

// any necessary models
use App\User;
use App\HappyHour;
use App\Location;


class HappyhoursController extends Controller
{
    //
    public $successStatus = 200;

    // just returns all of the happy hours. for testing or for anything else
    public function getHappyHours() {
    	// get all of the locations with happy_hours
    	$results = Location::with('happy_hours')->get();
    	return Response::json(array($results));
    }
}
