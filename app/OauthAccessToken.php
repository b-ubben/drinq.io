<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OauthAccessToken extends Model
{
    // oauth access token model

    // declare key
	protected $primaryKey = "id";

	// name of access token table
	protected $table = "oauth_access_tokens";

	// relationship to the user
	public function user() {
    	return $this->belongsTo('App\User', 'user_id');
    }
}
