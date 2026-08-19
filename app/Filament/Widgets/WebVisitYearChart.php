<?php

namespace App\Filament\Widgets;

use App\Models\WebVisit;
use Filament\Widgets\ChartWidget;

class WebVisitYearChart extends ChartWidget
{
    protected static ?int $sort = 5;

    public function getHeading(): string
    {
        return 'Kunjungan Website per Tahun';
    }

    protected function getData(): array
    {
        $data = WebVisit::selectRaw('YEAR(created_at) as year, COUNT(*) as total')
            ->groupBy('year')
            ->orderBy('year')
            ->get();

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Kunjungan',
                    'data' => $data->pluck('total'),
                ],
            ],
            'labels' => $data->pluck('year'),
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
