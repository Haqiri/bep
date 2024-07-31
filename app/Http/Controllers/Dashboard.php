<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Jcf\Geocode\Geocode;

class Dashboard extends Controller
{
    public function dashboard(Request $request){
        $data = $request->session()->all();
        
        if(!isset($data['id_user'])){
            return redirect()->route('login')->with('error', 'Anda tidak memiliki hak akses!');
        } else{
            $lapangan = DB::table('lapangan')->get();
            $berkas = DB::table('berkas')->get();
            return view('dashboard.dashboard')->with(['session_user'=> $data, 'lapangan' => $lapangan, 'berkas'=>$berkas]);
        }
    }

    public function detailLapangan(Request $request){
        $data = $request->session()->all();
        
        if(!isset($data['id_user'])){
            return redirect()->route('login')->with('error', 'Anda tidak memiliki hak akses!');
        } else{
            //ambil data detail dan pakai API google maps
            $geocode = new Geocode();
            $location = $geocode->get('Alamat lapangan');
            $detail_lapangan = DB::table('lapangan')->join('jadwal', 'lapangan.id_lapangan', '=', 'jadwal.id_lapangan')->get();
            return view('dashboard.detail_lapangan')->with(['session_user'=> $data, 'detail_lapangan' => $detail_lapangan, 'location'=> $location]);
        }
    }
}