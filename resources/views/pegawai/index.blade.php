@extends('layouts.app')

@section('content')
    <!-- Page Header Start -->
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">

        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">{{ $title }}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="{{ '/' }}">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">{{ $title }}</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container py-5">
        <div class="mb-4">
            <h1 class="mb-1">{{ $title }}</h1>
            <p class="text-muted mb-0">
                Total {{ $pegawai->count() }} Pegawai
            </p>
        </div>

        <div class="table-responsive shadow-sm rounded">
            <table id="pegawaiTable" class="table table-bordered table-hover align-middle">
                <thead class="table-light text-center">
                    <tr>
                        <th style="width:60px;">No</th>
                        <th>Nama</th>
                        <th>NIP</th>
                        <th>Jabatan</th>
                        <th>Pangkat</th>
                        <th>Golongan</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($pegawai as $row)
                        <tr>
                            <td class="text-center"></td>
                            <td class="fw-semibold">{{ $row->nama }}</td>
                            <td>{{ $row->nip }}</td>
                            <td>{{ $row->jabatan }}</td>
                            <td>{{ $row->pangkat }}</td>
                            <td class="text-center">
                                <span class="badge bg-secondary">
                                    {{ $row->golongan }}
                                </span>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
@push('scripts')
    <script>
        $(document).ready(function() {
            let table = $('#pegawaiTable').DataTable({
                pageLength: 10,
                lengthMenu: [10, 25, 50, 100],
                ordering: true,
                searching: true,
                responsive: true,
                language: {
                    search: "Cari:",
                    lengthMenu: "Tampilkan _MENU_ data",
                    info: "Menampilkan _START_ - _END_ dari _TOTAL_ data",
                    paginate: {
                        first: "Awal",
                        last: "Akhir",
                        next: "›",
                        previous: "‹"
                    },
                    zeroRecords: "Data tidak ditemukan"
                },
                columnDefs: [{
                    orderable: false,
                    targets: 0
                }]
            });

            // Auto nomor urut
            table.on('order.dt search.dt', function() {
                table.column(0, {
                        search: 'applied',
                        order: 'applied'
                    })
                    .nodes()
                    .each(function(cell, i) {
                        cell.innerHTML = i + 1;
                    });
            }).draw();
        });
    </script>
@endpush
