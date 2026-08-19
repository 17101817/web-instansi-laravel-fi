<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithTitle;

class PegawaiDataTemplateExport implements FromArray, WithHeadings, WithTitle
{
    public function headings(): array
    {
        return [
            'nama',
            'nip',
            'jabatan',
            'pangkat',
            'golongan',
        ];
    }

    public function array(): array
    {
        return [
            [
                'Contoh Nama Pegawai',
                '198012312023011001',
                'Analis Kesejahteraan Sosial',
                'Penata Muda',
                'III/a',
            ],
        ];
    }

    public function title(): string
    {
        return 'Template Pegawai';
    }
}
