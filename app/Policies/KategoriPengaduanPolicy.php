<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\KategoriPengaduan;
use Illuminate\Auth\Access\HandlesAuthorization;

class KategoriPengaduanPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:KategoriPengaduan');
    }

    public function view(AuthUser $authUser, KategoriPengaduan $kategoriPengaduan): bool
    {
        return $authUser->can('View:KategoriPengaduan');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:KategoriPengaduan');
    }

    public function update(AuthUser $authUser, KategoriPengaduan $kategoriPengaduan): bool
    {
        return $authUser->can('Update:KategoriPengaduan');
    }

    public function delete(AuthUser $authUser, KategoriPengaduan $kategoriPengaduan): bool
    {
        return $authUser->can('Delete:KategoriPengaduan');
    }

    public function restore(AuthUser $authUser, KategoriPengaduan $kategoriPengaduan): bool
    {
        return $authUser->can('Restore:KategoriPengaduan');
    }

    public function forceDelete(AuthUser $authUser, KategoriPengaduan $kategoriPengaduan): bool
    {
        return $authUser->can('ForceDelete:KategoriPengaduan');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:KategoriPengaduan');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:KategoriPengaduan');
    }

    public function replicate(AuthUser $authUser, KategoriPengaduan $kategoriPengaduan): bool
    {
        return $authUser->can('Replicate:KategoriPengaduan');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:KategoriPengaduan');
    }

}