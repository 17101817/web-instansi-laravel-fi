<?php

namespace App\Filament\Widgets;

use App\Models\WebVisit;
use Filament\Widgets\ChartWidget;

class WebVisitChart extends ChartWidget
{
    protected static ?int $sort = 2;

    public function getHeading(): string
    {
        return 'Kunjungan 7 Hari Terakhir';
    }
    protected function getData(): array
    {
        $data = WebVisit::selectRaw('DATE(created_at) as date, COUNT(*) as total')
            ->where('created_at', '>=', now()->subDays(7))
            ->groupBy('date')
            ->pluck('total', 'date');

        return [
            'datasets' => [
                [
                    'label' => 'Visits',
                    'data' => $data->values(),
                ],
            ],
            'labels' => $data->keys(),
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
