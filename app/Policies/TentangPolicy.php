<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Tentang;
use Illuminate\Auth\Access\HandlesAuthorization;

class TentangPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Tentang');
    }

    public function view(AuthUser $authUser, Tentang $tentang): bool
    {
        return $authUser->can('View:Tentang');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Tentang');
    }

    public function update(AuthUser $authUser, Tentang $tentang): bool
    {
        return $authUser->can('Update:Tentang');
    }

    public function delete(AuthUser $authUser, Tentang $tentang): bool
    {
        return $authUser->can('Delete:Tentang');
    }

    public function restore(AuthUser $authUser, Tentang $tentang): bool
    {
        return $authUser->can('Restore:Tentang');
    }

    public function forceDelete(AuthUser $authUser, Tentang $tentang): bool
    {
        return $authUser->can('ForceDelete:Tentang');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Tentang');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Tentang');
    }

    public function replicate(AuthUser $authUser, Tentang $tentang): bool
    {
        return $authUser->can('Replicate:Tentang');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Tentang');
    }

}