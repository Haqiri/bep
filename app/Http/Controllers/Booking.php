<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\RedirectResponse;
use App\Models\BookingModels;

class Booking extends Controller
{
    public function booking(Request $request){
        $data = $request->session()->all();
        
        if(!isset($data['id_user'])){
            return redirect()->route('login')->with('error', 'Anda tidak memiliki hak akses!');
        } else{
            $lapangan = DB::table('lapangan')->get();
            $detail_lapangan = DB::table('lapangan')->join('jadwal', 'lapangan.id_lapangan', '=', 'jadwal.id_lapangan')->get();
            return view('dashboard.booking')->with(['session_user'=> $data, 'lapangan'=> $lapangan, 'detail_lapangan' => $detail_lapangan]);
        }
    }

    public function saveBooking(Request $request): RedirectResponse{
        $input = $request->all();
        BookingModels::create($input);
        
        return redirect('booking')->with('message', 'Lapangan berhasil di booking!');
    }
}