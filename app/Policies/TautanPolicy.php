<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Tautan;
use Illuminate\Auth\Access\HandlesAuthorization;

class TautanPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Tautan');
    }

    public function view(AuthUser $authUser, Tautan $tautan): bool
    {
        return $authUser->can('View:Tautan');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Tautan');
    }

    public function update(AuthUser $authUser, Tautan $tautan): bool
    {
        return $authUser->can('Update:Tautan');
    }

    public function delete(AuthUser $authUser, Tautan $tautan): bool
    {
        return $authUser->can('Delete:Tautan');
    }

    public function restore(AuthUser $authUser, Tautan $tautan): bool
    {
        return $authUser->can('Restore:Tautan');
    }

    public function forceDelete(AuthUser $authUser, Tautan $tautan): bool
    {
        return $authUser->can('ForceDelete:Tautan');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Tautan');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Tautan');
    }

    public function replicate(AuthUser $authUser, Tautan $tautan): bool
    {
        return $authUser->can('Replicate:Tautan');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Tautan');
    }

}