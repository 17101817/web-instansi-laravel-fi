<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    //
    use HasFactory;

    protected $guarded = ['id'];

    // Relasi ke Blog
    public function blog()
    {
        return $this->belongsTo(Blog::class);
    }

    // Parent comment (jika ini balasan)
    public function parent()
    {
        return $this->belongsTo(Comment::class, 'parent_id');
    }

    // Replies / balasan
    public function replies()
    {
        return $this->hasMany(Comment::class, 'parent_id')
            ->with('replies'); // recursive
    }
}
