<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    // specify the primary key for the table
    protected $primaryKey = "item_id";

    // specify the table for the Menu model
    protected $table = "items";

    // create the relationship of RESTAURANT has one MENU
    public function location() {
    	return $this->belongsTo('App\Location', 'location_id');
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'item_name', 
        'item_description', 
        'item_price',
    ];
}