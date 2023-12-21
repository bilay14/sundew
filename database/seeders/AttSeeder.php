<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AttSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('attendance')->insert([

            [
                'user_id' => '1',
                'date' => '2023-12-01',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '2',
                'date' => '2023-12-01',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '3',
                'date' => '2023-12-01',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '4',
                'date' => '2023-12-01',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '5',
                'date' => '2023-12-01',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],


            [
                'user_id' => '1',
                'date' => '2023-12-02',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '2',
                'date' => '2023-12-02',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '3',
                'date' => '2023-12-02',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '4',
                'date' => '2023-12-02',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],
            [
                'user_id' => '5',
                'date' => '2023-12-02',
                'check_in_time' => '9:00',
                'check_out_time'=> '18:00',
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ],

        ]);

    }
}
