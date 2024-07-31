<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Berkas extends Model
{
    use HasFactory;
    use HasUuids;
    use SoftDeletes;
    protected $table = 'berkas';
    protected $primaryKey = 'id_berkas';
    protected $fillable = ['id_berkas', 'id_booking', 'status', 'created_at', 'updated_at', 'deleted_at'];
}