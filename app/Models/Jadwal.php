<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Jadwal extends Model
{
    use HasFactory;

    use HasUuids;
    use SoftDeletes;
    protected $table = 'jadwal';
    protected $primaryKey = 'id_jadwal';
    protected $fillable = ['id_jadwal', 'id_lapangan', 'tanggal', 'waktu', 'status', 'created_at', 'updated_at', 'deleted_at'];
}