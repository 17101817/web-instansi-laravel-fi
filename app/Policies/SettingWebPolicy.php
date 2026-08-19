<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\SettingWeb;
use Illuminate\Auth\Access\HandlesAuthorization;

class SettingWebPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:SettingWeb');
    }

    public function view(AuthUser $authUser, SettingWeb $settingWeb): bool
    {
        return $authUser->can('View:SettingWeb');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:SettingWeb');
    }

    public function update(AuthUser $authUser, SettingWeb $settingWeb): bool
    {
        return $authUser->can('Update:SettingWeb');
    }

    public function delete(AuthUser $authUser, SettingWeb $settingWeb): bool
    {
        return $authUser->can('Delete:SettingWeb');
    }

    public function restore(AuthUser $authUser, SettingWeb $settingWeb): bool
    {
        return $authUser->can('Restore:SettingWeb');
    }

    public function forceDelete(AuthUser $authUser, SettingWeb $settingWeb): bool
    {
        return $authUser->can('ForceDelete:SettingWeb');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:SettingWeb');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:SettingWeb');
    }

    public function replicate(AuthUser $authUser, SettingWeb $settingWeb): bool
    {
        return $authUser->can('Replicate:SettingWeb');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:SettingWeb');
    }

}