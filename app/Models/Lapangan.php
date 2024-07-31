<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Lapangan extends Model
{
    use HasFactory;

    use HasUuids;
    use SoftDeletes;
    protected $table = 'lapangan';
    protected $primaryKey = 'id_lapangan';
    protected $fillable = ['id_lapangan', 'nama_lapangan', 'alamat', 'jenis_lapangan', 'deskripsi', 'tipe', 'ukuran', 'kapasitas', 'cp', 'created_at', 'updated_at', 'deleted_at'];
}