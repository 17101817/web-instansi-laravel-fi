<?php

namespace App\Filament\Resources\Galeris\Tables;

use App\Models\Galeri;
use Filament\Tables\Table;
use Filament\Actions\EditAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;

class GalerisTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->query(
                Galeri::orderBy('created_at', 'desc')
            )
            ->columns([
                TextColumn::make('#')
                    ->rowIndex()
                    ->searchable(),
                TextColumn::make('name')
                    ->searchable(),
                ImageColumn::make('Preview')
                    ->label('Preview')
                    ->getStateUsing(fn($record) => $record->image[0] ?? null)
                    ->disk('public')
                    ->square()
                    ->height(60),
                TextColumn::make('image')
                    ->label('Jumlah Foto')
                    ->getStateUsing(fn($record) => count($record->image ?? []))
                    ->badge(),
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
