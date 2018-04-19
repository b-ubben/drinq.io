<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HappyHour extends Model
{
    // model for the happy hour times
    protected $primaryKey = "hours_id";

    // specify the table for this model
    protected $table = "happy_hours";

    // specify the relations for the models
    public function locations() {
        return $this->belongsTo('App\Location', 'location_id');
    }

     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'day',
        'start_time',
        'end_time',
    ];
}
