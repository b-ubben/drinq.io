<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

    	Eloquent::unguard();

    	// seed the locations table
    	$locations_path = 'sql/locations.sql';
    	DB::unprepared(file_get_contents($locations_path));
        $this->command->info('Locations table seeded!');

        // seed the happy_hours table
        $happy_hours_path = 'sql/happy_hours.sql';
        DB::unprepared(file_get_contents($happy_hours_path));
        $this->command->info('Happy Hours table seeded!');

        // seed the roles table.
        $roles_path = 'sql/happy_hours.sql';
        DB::unprepared(file_get_contents($roles_path));
        $this->command->info('Roles table seeded!');
    }
}