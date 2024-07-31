<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthManager;
use App\Http\Controllers\Dashboard;
use App\Http\Controllers\Booking;

//login
Route::get('/', [AuthManager::class, 'login'])->name('login');
Route::post('/', [AuthManager::class, 'loginPost'])->name('loginpost');
Route::get('/', [AuthManager::class, 'logout'])->name('logout');

//dashboard
Route::get('/dashboard', [Dashboard::class, 'dashboard'])->name('dashboard');
Route::post('/detail_lapangan', [Dashboard::class, 'detailLapangan'])->name('detail_lapangan');

//booking
Route::get('/booking', [Booking::class, 'booking'])->name('booking');
Route::post('/save_booking', [Booking::class, 'saveBooking'])->name('save_booking');