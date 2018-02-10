<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    // specify primary key
    protected $primaryKey = "role_id";

    // specifying that my table is called "users"
    protected $table = "roles";

    // specify the foreign key, since we're using a custom one
    public function users() {
        return $this->belongsToMany('App\User', 'user_roles', 'user_id', 'role_id');
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'role',
    ];
}