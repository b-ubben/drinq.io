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
      $defaultRadius = 5;

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

      // MUST HAVE PHP CURL INSTALLED
      $ch = curl_init($url);
      curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
      curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      $zip_data = curl_exec($ch);
      $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);

      // check to see if zippopotamus API returns a 200, else it couldn't find your zip.
      if(curl_errno($ch) == 0 AND $status_code == 200) {
          $result = json_decode($zip_data, true);
      } else {
          $successStatus = 500;
          return Response::json(array(
            'status' => $successStatus,
            'reason'   => 'Could not find your zip code.',
            'message' =>  'The zip code you entered does not exist!'
          ));
      }

  		// pulling simple lat/long data from request above
  		$longitude = $result["places"][0]["longitude"];
      $latitude = $result["places"][0]["latitude"];

      // select statement for getting all elements we want back.
        $proximity_query = "locations.location_id, location_name, zip_code, latitude, longitude, address, city, zip_code, country, state, display_phone, locations.created_at, locations.updated_at,
        (3959 * acos(cos(radians($latitude)) * cos(radians(latitude)) * cos(radians(longitude) - radians($longitude)) + sin(radians($latitude)) * sin(radians(latitude)))) AS distance";

        $location_results = Location::with('happy_hours')
                          ->select(DB::raw($proximity_query))
                          ->groupBy(DB::raw('locations.location_id'))
                          ->havingRaw('distance < '.$defaultRadius)
                          ->orderByRaw('distance ASC')
                          ->get();

        if(count($location_results) == 0) {
          $successStatus = 666;
    		  return Response::json(array(
              'status' => $successStatus,
              'reason'   => 'No happy hours in your area!',
              'message' =>  'There are no happy hours in your area! :('
          ));
        } else if ($location_results) {
          $successStatus = 200;
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
    // MUST BE LOGGED IN TO USE THIS ROUTE
    public function addHappyHours(Request $request) {
      // initiate rules for validation.
      $rules = array(
        'location_id' =>  'required|numeric',
        'day'  =>  'required|alphaNum|size:3',
        'start_time'   =>  'required',
        'end_time'  =>  'required',
      );

      // initiate validator, and get all form fields
      $validator = Validator::make($request->only("location_id", "day", "start_time", "end_time"), $rules);

      if($validator->fails()) {
        $successStatus = 500;
        return Response::json(
            array(
                'status' => $successStatus,
                'message' => "Could not add happy hour.",
                'reason' => $validator->messages()
            ), 500
          );
      } else {
        // if validation succeeds, proceed with making the new time.
        $new_happy_hour = new HappyHour;
        $location_id = $request->input('location_id');

        // build the happy hour model to add it
        $new_happy_hour->day = $request->input('day');
        $new_happy_hour->start_time = $request->input('start_time');
        $new_happy_hour->end_time = $request->input('end_time');

        // initiate with 0 flags. once it hits n amount of flags, it'll delete itself automatically.
        $new_happy_hour->flags = 0;

        // associate the happy hour added to the location.
        $new_happy_hour->locations()->associate($location_id);

        // save the newly created model to the database.
        $new_happy_hour->save();

        // set success status
        $successStatus = 200;

        return Response::json(
            array(
              'status' => $successStatus,
              'message' => "Successfully added happy hour time!",
              'reason' => "Added the happy hour successfully.",
          )
        );
      }
    }

    // allows users to flag a specific happy hour on click
    // flags it in case if it's wrong, etc.
    public function flagHappyHour(Request $request) {
        // initiate the validation part of what we want.
        $rules = array(
        	'hours_id'	=>	'required|numeric'
        );

        // $flag_count = HappyHour::where()
    }
}
