<?php

namespace App\Filament\Resources\PegawaiData\Pages;

use App\Filament\Resources\PegawaiData\PegawaiDataResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditPegawaiData extends EditRecord
{
    protected static string $resource = PegawaiDataResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
