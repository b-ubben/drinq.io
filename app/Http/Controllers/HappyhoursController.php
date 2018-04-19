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

    // just returns all of the happy hours. for testing or for anything else
    public function getHappyHours() {
    	// get all of the locations with happy_hours
    	$results = Location::with('happy_hours')->get();

    	if($results) {
    		$successStatus = 200;
	    	// build the json array
	    	return Response::json(array(
	    		'status' => $successStatus,
	    		'results' => $results
	    	));
	    } else {
            $successStatus = 500;
            return Response::json(array(
                'status' => $successStatus,
                'reason' => 'Unable to retrieve results',
                'message' => 'Could not retrieve results from the database'
            ));
        }
    }

    // returns all of the happy hours within a radius.
    public function getHappyHoursZip($zipcode) {
        // get all of the locations with happy hours with zipcode constraints.
        $defaultRadius = 15;

        $locations_radius = Location::select(
            DB::raw("*,
                        ( 3959 * acos( cos( radians(?) ) *
                        cos( radians( lat ) )
                        * cos( radians( lon ) - radians(?)
                        ) + sin( radians(?) ) *
                        sin( radians( lat ) ) )
                        ) AS distance"))
                ->having("distance", "<", "?")
                ->orderBy("distance")
                ->setBindings([$lat, $lon, $lat,  $defaultRadius])
                ->get();
                
        return $locations_radius;
    }
}
