<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class attendance extends Controller
{
    //
    public function index () {


        $user = DB::table('users')->get();
        $late = 0;
        $early_leave = 0;
        $deduct = 0;
            foreach ($user as $val_u) {
                $att = [];
                $att = DB::table('attendance')->where(['user_id'=>$val_u->id])->get();
                foreach ($att as $val) {


                        $id = $val->id;
                        $date = $val->date;
                        $check_in_time = $val->check_in_time;
                        $check_out_time = $val->check_out_time;

                        if ($check_in_time > '9:30') {
                            $late += 1;
                        }
                        if ($check_out_time < '17:00')  {
                            $early_leave += 1;
                        }
                    $att[] = ['id'=>$id,'date'=>$date,'check_in_time'=>$check_in_time,'check_out_time'=>$check_out_time];
                }
                if ($late+$early_leave==5) {
                    $deduct = 1;
                }
                $new [] = ['id'=>$val_u->id,'name'=>$val_u->name,'date'=>$date,'check_in_time'=>$check_in_time,'check_out_time'=>$check_out_time,
                        'late'=>$late,'early_leave'=>$early_leave,'deduct'=>$deduct,'att'=>$att];
            }
//print_r($new);
       $array =  DB::table('users as u')

            ->join('attendance as a','a.user_id','=','u.id')
            ->select('u.*','a.*')
            ->orderBy('date')->get();
        //print_r($array);





    return view('attendance',['data'=>$array,'new'=>$new]);
    }
}
