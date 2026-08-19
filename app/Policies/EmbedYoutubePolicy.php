<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EmbedYoutube;
use Illuminate\Auth\Access\HandlesAuthorization;

class EmbedYoutubePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EmbedYoutube');
    }

    public function view(AuthUser $authUser, EmbedYoutube $embedYoutube): bool
    {
        return $authUser->can('View:EmbedYoutube');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EmbedYoutube');
    }

    public function update(AuthUser $authUser, EmbedYoutube $embedYoutube): bool
    {
        return $authUser->can('Update:EmbedYoutube');
    }

    public function delete(AuthUser $authUser, EmbedYoutube $embedYoutube): bool
    {
        return $authUser->can('Delete:EmbedYoutube');
    }

    public function restore(AuthUser $authUser, EmbedYoutube $embedYoutube): bool
    {
        return $authUser->can('Restore:EmbedYoutube');
    }

    public function forceDelete(AuthUser $authUser, EmbedYoutube $embedYoutube): bool
    {
        return $authUser->can('ForceDelete:EmbedYoutube');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EmbedYoutube');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EmbedYoutube');
    }

    public function replicate(AuthUser $authUser, EmbedYoutube $embedYoutube): bool
    {
        return $authUser->can('Replicate:EmbedYoutube');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EmbedYoutube');
    }

}