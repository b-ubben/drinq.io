<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    // specify the primary key
    protected $primaryKey = "review_id";

    // specify the table for the model
    protected $table ="reviews";

    // specify the relationships to the users and restaurants
    public function user() {
    	return $this->belongsTo('App\User', 'user_id');
    }

    public function location() {
    	return $this->belongsTo('App\Location', 'location_id');
    }

     /**
     * The attributes that are mass assignable. aka 
     * changeable by user/application
     *
     * @var array
     */
    protected $fillable = [
        'rating', 'review_tagline', 'review',
    ];
}
