<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    // specify the primary key for the model/table
    protected $primaryKey = "user_id";

    // specify the table for users
    protected $table = "users";

    // the USERS table is related to the REVIEWS table. USERS can have many REVIEWS
    public function reviews() {
        return $this->hasMany('App\Review', 'review_id');
    }

    // specify the many to many relation to the roles table
    public function roles() {
        return $this->belongsToMany('App\Role', 'user_roles', 'user_id', 'role_id');
    }

    // small function that determines whether the user is an admin or not
    public function isAdmin() {
        foreach ($this->roles()->get() as $role) {
            if ($role->role == 'Administrator') {
                return true;
            }
        }
        return false;
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];
}
