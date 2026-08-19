<?php

namespace App\Filament\Resources\Ppids\Pages;

use App\Filament\Resources\Ppids\PpidResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditPpid extends EditRecord
{
    protected static string $resource = PpidResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
