<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\PegawaiData;
use Illuminate\Auth\Access\HandlesAuthorization;

class PegawaiDataPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:PegawaiData');
    }

    public function view(AuthUser $authUser, PegawaiData $pegawaiData): bool
    {
        return $authUser->can('View:PegawaiData');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:PegawaiData');
    }

    public function update(AuthUser $authUser, PegawaiData $pegawaiData): bool
    {
        return $authUser->can('Update:PegawaiData');
    }

    public function delete(AuthUser $authUser, PegawaiData $pegawaiData): bool
    {
        return $authUser->can('Delete:PegawaiData');
    }

    public function restore(AuthUser $authUser, PegawaiData $pegawaiData): bool
    {
        return $authUser->can('Restore:PegawaiData');
    }

    public function forceDelete(AuthUser $authUser, PegawaiData $pegawaiData): bool
    {
        return $authUser->can('ForceDelete:PegawaiData');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:PegawaiData');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:PegawaiData');
    }

    public function replicate(AuthUser $authUser, PegawaiData $pegawaiData): bool
    {
        return $authUser->can('Replicate:PegawaiData');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:PegawaiData');
    }

}