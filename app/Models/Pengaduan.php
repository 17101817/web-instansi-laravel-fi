<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Pengaduan extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    protected $casts = [
        'dokumen' => 'array',
    ];

    public function kategoriPengaduan()
    {
        return $this->belongsTo(KategoriPengaduan::class);
    }
}
