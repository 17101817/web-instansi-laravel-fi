<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Ppid;
use Illuminate\Auth\Access\HandlesAuthorization;

class PpidPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Ppid');
    }

    public function view(AuthUser $authUser, Ppid $ppid): bool
    {
        return $authUser->can('View:Ppid');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Ppid');
    }

    public function update(AuthUser $authUser, Ppid $ppid): bool
    {
        return $authUser->can('Update:Ppid');
    }

    public function delete(AuthUser $authUser, Ppid $ppid): bool
    {
        return $authUser->can('Delete:Ppid');
    }

    public function restore(AuthUser $authUser, Ppid $ppid): bool
    {
        return $authUser->can('Restore:Ppid');
    }

    public function forceDelete(AuthUser $authUser, Ppid $ppid): bool
    {
        return $authUser->can('ForceDelete:Ppid');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Ppid');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Ppid');
    }

    public function replicate(AuthUser $authUser, Ppid $ppid): bool
    {
        return $authUser->can('Replicate:Ppid');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Ppid');
    }

}