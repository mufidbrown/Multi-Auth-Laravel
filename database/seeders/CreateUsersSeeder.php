<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CreateUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = [
            [

               'name'=>'Admin User',

               'email'=>'admin@multiauth.com',

               'type'=>1,

               'password'=> bcrypt('123456'),

            ],
            [

                'name'=>'Manager User',
 
                'email'=>'manager@multiauth.com',
 
                'type'=> 2,
 
                'password'=> bcrypt('123456'),
 
             ],
             [

                'name'=>'User',
 
                'email'=>'user@multiauth.com',
 
                'type'=>0,
 
                'password'=> bcrypt('123456'),
 
             ],
            ];
            foreach ($users as $key => $user) {

                User::create($user);
        }
    }
}
