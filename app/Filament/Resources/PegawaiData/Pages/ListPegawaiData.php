<?php

namespace App\Filament\Resources\PegawaiData\Pages;

use Filament\Actions\Action;
use App\Imports\PegawaiDataImport;
use Filament\Actions\CreateAction;
use Maatwebsite\Excel\Facades\Excel;
use Filament\Notifications\Notification;
use Filament\Forms\Components\FileUpload;
use Filament\Resources\Pages\ListRecords;
use App\Exports\PegawaiDataTemplateExport;
use App\Filament\Resources\PegawaiData\PegawaiDataResource;

class ListPegawaiData extends ListRecords
{
    protected static string $resource = PegawaiDataResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()->label('Tambah Pegawai'),
            // 🔽 DOWNLOAD TEMPLATE
            Action::make('downloadTemplate')
                ->label('Download Template Excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('gray')
                ->action(
                    fn() =>
                    Excel::download(
                        new PegawaiDataTemplateExport,
                        'template-import-pegawai.xlsx'
                    )
                ),

            // 🔼 IMPORT
            Action::make('import')
                ->label('Import Pegawai')
                ->icon('heroicon-o-arrow-up-tray')
                ->color('success')
                ->form([
                    FileUpload::make('file')
                        ->label('File Excel')
                        ->required()
                        ->acceptedFileTypes([
                            'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                            'application/vnd.ms-excel',
                        ]),
                ])
                ->action(function (array $data) {
                    try {
                        Excel::import(new PegawaiDataImport, $data['file']);

                        Notification::make()
                            ->title('Import berhasil')
                            ->body('Data pegawai berhasil diimport')
                            ->success()
                            ->send();
                    } catch (\Throwable $e) {
                        Notification::make()
                            ->title('Import gagal')
                            ->body($e->getMessage())
                            ->danger()
                            ->send();
                    }
                }),
        ];
    }
}
