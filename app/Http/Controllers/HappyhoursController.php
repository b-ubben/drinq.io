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
        	'message'	=>	'The zip code entered is incorrectly formatted or is not valid.'
        ));
      }

        // using a more reliable API with no request limits
      $url = "http://api.zippopotam.us/us/".urlencode($zipcode);
  		$result_string = file_get_contents($url);
  		$result = json_decode($result_string, true);
      
  		// pulling simple lat/long data from request above
  		$longitude = $result["places"][0]["longitude"];
      $latitude = $result["places"][0]["latitude"];
        
        // backup query below in case things don't work out. if they do, remove!!!
      $proximity_query = "locations.location_id, location_name, zip_code, latitude, longitude, address, city, zip_code, country, state, display_phone, locations.created_at, locations.updated_at,
        CONCAT('[', GROUP_CONCAT(JSON_OBJECT('day', happy_hours.day, 'start_time', happy_hours.start_time, 'end_time', happy_hours.end_time) SEPARATOR ', '), ']') AS happy_hours,
        (3959 * acos(cos(radians($latitude)) * cos(radians(latitude)) * cos(radians(longitude) - radians($longitude)) + sin(radians($latitude)) * sin(radians(latitude)))) AS distance";

  		// raw proximity_query to return areas within the radius.
  		$location_results = DB::table('locations')
                       ->join('happy_hours', 'happy_hours.location_id', '=', 'locations.location_id')
                       ->select(DB::raw($proximity_query))
                       ->groupBy(DB::raw('locations.location_id'))
                       ->havingRaw('distance < '.$defaultRadius)
                       ->orderByRaw('distance ASC')
                       ->get();

        $successStatus = 200;

        if(count($location_results) == 0) {
      		return Response::json(array(
          	'status' => $successStatus,
          	'reason'	 => 'No happy hours in your area!',
          	'message'	=>	'There are no happy hours in your area! :('
          ));
        } else if ($location_results) {
          return Response::json(array(
          	'status' => $successStatus,
          	'results'	 => $location_results
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

    // let user post happy hours to the page.
    public function addHappyHours($day, $start_time, $end_time) {
    	// code to allow users to add happy hours.
      echo $day . $start_time . $end_time;
    }
}
