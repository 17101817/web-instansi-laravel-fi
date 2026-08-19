@extends('layouts.app')

@section('content')
    <!-- Page Header Start -->
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">
        <div class="container py-5 text-center">
            <h1 class="display-4 text-white mb-3 animated slideInDown">
                {{ $title }}
            </h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item">
                        <a class="text-white" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="breadcrumb-item text-white active">
                        {{ $title }}
                    </li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <div class="container py-5">

        <div class="text-center mb-5">
            <h2 class="fw-bold">Hubungi Kami</h2>
            <p class="text-muted">
                Informasi resmi Dinas Sosial Kabupaten Penajam Paser Utara
            </p>
        </div>

        @if ($kontak)
            <!-- Contact Info -->
            <div class="row g-4 mb-5">

                <!-- Alamat -->
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="contact-card h-100">
                        <div class="contact-icon">
                            <i class="fa fa-map-marker-alt"></i>
                        </div>
                        <h5>Alamat Kantor</h5>
                        <p>{{ $kontak->address }}</p>
                    </div>
                </div>

                <!-- Telepon -->
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="contact-card h-100">
                        <div class="contact-icon">
                            <i class="fa fa-phone-alt"></i>
                        </div>
                        <h5>Telepon</h5>
                        <p>
                            <a href="tel:{{ $kontak->phone }}" class="text-decoration-none">
                                {{ $kontak->phone }}
                            </a>
                        </p>
                    </div>
                </div>

                <!-- Email -->
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="contact-card h-100">
                        <div class="contact-icon">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <h5>Email</h5>
                        <p>
                            <a href="mailto:{{ $kontak->email }}" class="text-decoration-none">
                                {{ $kontak->email }}
                            </a>
                        </p>
                    </div>
                </div>

            </div>

            <!-- Google Maps -->
            @if ($kontak->maps_embed)
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <div class="map-wrapper">
                        {!! $kontak->maps_embed !!}
                    </div>
                </div>
            @endif
        @else
            <div class="alert alert-warning text-center">
                Data kontak belum tersedia.
            </div>
        @endif

    </div>
@endsection
