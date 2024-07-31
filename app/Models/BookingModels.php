<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class BookingModels extends Model
{
    use HasFactory;
    use HasUuids;
    use SoftDeletes;
    protected $table = 'booking';
    protected $primaryKey = 'id_booking';
    protected $fillable = ['id_booking', 'id_user', 'id_lapangan', 'jenis_pemesanan', 'tgl_booking', 'waktu', 'catatan', 'total_pembayaran', 'status', 'created_at', 'updated_at', 'deleted_at'];
}