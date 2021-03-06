<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    // specify primary key of table
    protected $primaryKey = "location_id";

    // specify the table that will be used for Location
    protected $table = "locations";

    // return the relation for reviews, menu items, and happy hours

    public function reviews() {
        return $this->hasMany('App\Review', 'location_id');
    }
    public function menu_items() {
        return $this->hasMany('App\Menu', 'location_id');
    }

    // set to the location_id so the relationship works.
    public function happy_hours() {
        return $this->hasMany('App\HappyHour', 'location_id');
    }

     /**
     * The attributes that are mass assignable.
     * will definitely have to be changed later.
     * @var array
     */
    protected $fillable = [
        'location_name', 
        'address', 
        'city',
        'state',
    ];
}
