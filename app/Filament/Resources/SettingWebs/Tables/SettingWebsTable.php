<?php

namespace App\Filament\Resources\SettingWebs\Tables;

use App\Models\SettingWeb;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class SettingWebsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->query(
                SettingWeb::orderBy('created_at', 'desc')
            )
            ->columns([
                TextColumn::make('#')
                    ->rowIndex()
                    ->searchable(),
                ImageColumn::make('logo_kiri')
                    ->disk('public')
                    ->circular(),
                ImageColumn::make('logo_kanan')
                    ->disk('public')
                    ->circular(),
                TextColumn::make('name')
                    ->searchable(),
                TextColumn::make('whatsapp')
                    ->searchable(),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
