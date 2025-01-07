<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserRoles extends Model
{
    use HasFactory;

    protected $table = 'user_roles';

    protected $fillable = [
        'user_role',
        'role_name',
    ];

    // Add relationships if needed
    public function user()
    {
        return $this->hasMany(User::class, 'user_type', 'user_role');
    }
}
