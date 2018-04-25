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

      // clean input to make sure that it's only a zip code, and numeric only.
      if(strlen((string)$zipcode) < 5 || strlen((string)$zipcode) > 5 || !is_numeric($zipcode)) {
      	$successStatus = 500;
      	return Response::json(array(
        	'status' => $successStatus,
        	'reason'	 => 'Please enter a valid zip code.',
        	'message'	=>	'There are no happy hours in your area! :('
        ));
      }

      // using a more reliable API with no request limits
        $url = "http://api.zippopotam.us/us/".urlencode($zipcode);
  		$result_string = file_get_contents($url);
  		$result = json_decode($result_string, true);
      
  		// latitude and longitude item
  		$longitude = $result["places"][0]["longitude"];
        $latitude = $result["places"][0]["latitude"];
        
  		// build query for getting distance within location.
  		$query = 'location_id, location_name, zip_code, latitude, longitude, address, city, zip_code, country, state, display_phone, created_at, updated_at,
  		(3959 * acos(cos(radians('.$latitude.')) * cos(radians(latitude)) * cos(radians(longitude) - radians('.$longitude.')) + sin(radians('.$latitude.')) * sin(radians(latitude)))) AS distance';

  		// raw query to return areas within the radius.
  		$results = DB::table('locations')
                       ->select(DB::raw($query))
                       ->havingRaw('distance < '.$defaultRadius)
                       ->orderByRaw('distance ASC')
                       ->get();

        $successStatus = 200;

        if(count($results) == 0) {
      		return Response::json(array(
          	'status' => $successStatus,
          	'reason'	 => 'No happy hours in your area!',
          	'message'	=>	'There are no happy hours in your area! :('
          ));
        } else if ($results) {
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
