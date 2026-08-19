<?php

namespace App\Filament\Resources\SettingWebs\Pages;

use App\Filament\Resources\SettingWebs\SettingWebResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditSettingWeb extends EditRecord
{
    protected static string $resource = SettingWebResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
