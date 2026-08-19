<?php

namespace App\Filament\Resources\Tautans\Pages;

use App\Filament\Resources\Tautans\TautanResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditTautan extends EditRecord
{
    protected static string $resource = TautanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
