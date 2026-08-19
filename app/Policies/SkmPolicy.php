<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Skm;
use Illuminate\Auth\Access\HandlesAuthorization;

class SkmPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Skm');
    }

    public function view(AuthUser $authUser, Skm $skm): bool
    {
        return $authUser->can('View:Skm');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Skm');
    }

    public function update(AuthUser $authUser, Skm $skm): bool
    {
        return $authUser->can('Update:Skm');
    }

    public function delete(AuthUser $authUser, Skm $skm): bool
    {
        return $authUser->can('Delete:Skm');
    }

    public function restore(AuthUser $authUser, Skm $skm): bool
    {
        return $authUser->can('Restore:Skm');
    }

    public function forceDelete(AuthUser $authUser, Skm $skm): bool
    {
        return $authUser->can('ForceDelete:Skm');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Skm');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Skm');
    }

    public function replicate(AuthUser $authUser, Skm $skm): bool
    {
        return $authUser->can('Replicate:Skm');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Skm');
    }

}