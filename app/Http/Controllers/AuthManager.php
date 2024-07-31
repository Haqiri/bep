<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthManager extends Controller
{
    public function login(){
        if (session()->has('id_user')) {
            return redirect('dashboard');
        }
        return view('auth.login');
    }

    public function loginPost(Request $request){
        $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);

        $data = $request->all();

        $remember = $request->has('remember') ? true : false; 

        if (Auth::attempt(['username' => $data['username'], 'password' => $data['password']], $remember)) {
            $user = Auth::user();

            if(isset($data['remember']) && !empty($data['remember'])){
                setcookie("username", $data['username'], time()+604800);
                setcookie("password", $data['password'], time()+604800);
            }else{
                setcookie("username", "");
                setcookie("password", "");
            }

            if ($user->deleted_at != null) {
                Auth::logout();
                return redirect()->route('login')->with('error', 'Akun Anda telah dihapus dan tidak dapat login!');
            }
            
            if ($user->foto_profile == '') {
                $request->session()->put('foto_profile', 'default.png');
            } else {
                $request->session()->put('foto_profile', $user->foto_profile);
            }

            $request->session()->put('username', $user->username);
            $request->session()->put('id_user', $user->id_user);
            $request->session()->put('nama_lengkap', $user->nama_lengkap);
            $request->session()->put('nik', $user->nik);
            $request->session()->put('email', $user->email);
            $request->session()->put('no_hp', $user->no_hp);

            return redirect()->route('dashboard')->with('message', 'Anda berhasil login!');
        } else {
            return redirect()->route('login')->with('error', 'Username atau Password salah!');
        }
    }

    public function logout(Request $request){
        $request->session()->invalidate();
        Auth::logout();
        return redirect()->route('login')->with('message', 'Anda berhasil logout!');
    }
}