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
use DB;
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
        $defaultRadius = 10;

        // use google api to get the lat and long of the zip code.
        $url = "http://maps.googleapis.com/maps/api/geocode/json?address=".urlencode($zipcode)."&sensor=false";
		$result_string = file_get_contents($url);
		$result = json_decode($result_string, true);

		// latitude and longitude item
		$latitude = $result["results"][0]["geometry"]["location"]["lat"];
		$longitude = $result["results"][0]["geometry"]["location"]["lng"];

		// build query for getting 
		$query = 'location_name, zip_code, (3959 * acos(cos(radians('.$latitude.')) * cos(radians(latitude)) * cos(radians(longitude) - radians('.$longitude.')) + sin(radians('.$latitude.')) * sin(radians(latitude)))) AS distance';

		// raw query to return areas within the radius.
		$results = DB::table('locations')
                     ->select(DB::raw($query))
                     ->havingRaw('distance < '.$defaultRadius.'')
                     ->orderByRaw('distance ASC')
                     ->get();

            if(count($results) == 0) {
            	$successStatus = 200;
        		return Response::json(array(
		        	'status' => $successStatus,
		        	'reason'	 => 'No happy hours in your area!',
		        	'message'	=>	'There are no happy hours in your area! :('
		        ));
            } else if ($results) {
            	$successStatus = 200;
		        return Response::json(array(
		        	'status' => $successStatus,
		        	'results'	 => $results
		        ));
            } else {
            	$successStatus = 500;
        		return Response::json(array(
		        	'status' => $successStatus,
		        	'reason'	 => 'Could not retrieve results',
		        	'message'	=>	'Could not get results from database.'
		        ));
            }
    }
}