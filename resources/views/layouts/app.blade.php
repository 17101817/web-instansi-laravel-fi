<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>{{ $title }} - {{ $SettingWeb->name }}</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="{{ asset('storage/' . $SettingWeb->logo_kanan) }}" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    {{-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"> --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ url('template') }}/lib/animate/animate.min.css" rel="stylesheet">
    <link href="{{ url('template') }}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="{{ url('template') }}/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ url('template') }}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ url('template') }}/css/style.css" rel="stylesheet">
    {{-- datatables --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">

</head>

<body>
    <!-- Spinner Start -->
    <!-- <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div> -->
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="{{ url('/') }}" class="navbar-brand d-flex align-items-center gap-2 px-4 px-lg-5">

            @if (!empty($SettingWeb?->logo_kanan))
                <img src="{{ asset('storage/' . $SettingWeb->logo_kanan) }}"
                    alt="{{ $SettingWeb->name ?? config('app.name') }}" style="height: 50px; width: auto;">
            @endif
            <div class="d-flex flex-column lh-sm">
                @php
                    $words = explode(' ', $SettingWeb->name ?? config('app.name'));
                    $chunks = array_chunk($words, 3);
                @endphp

                @foreach ($chunks as $chunk)
                    <span class="fw-bold text-primary" style="font-size: 1rem;">
                        {{ implode(' ', $chunk) }}
                    </span>
                @endforeach
            </div>


        </a>


        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="{{ '/' }}"
                    class="nav-item nav-link {{ request()->is('/') ? 'active' : '' }}">Home</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle {{ request()->is('profile*') ? 'active' : '' }}"
                        data-bs-toggle="dropdown">
                        Profile
                    </a>

                    <div class="dropdown-menu fade-up m-0">

                        @forelse ($profiles as $profile)
                            <a href="{{ route('profile.show', $profile->slug) }}"
                                class="dropdown-item {{ request()->is('profile/' . $profile->slug) ? 'active' : '' }}">
                                {{ $profile->name }}
                            </a>
                        @empty
                            <span class="dropdown-item text-muted">
                                Data profil belum tersedia
                            </span>
                        @endforelse

                    </div>
                </div>
                {{-- == --}}
                <div class="nav-item dropdown">
                    <a href="#"
                        class="nav-link dropdown-toggle {{ request()->is('unit-kerja*') ? 'active' : '' }}"
                        data-bs-toggle="dropdown">
                        Unit Kerja
                    </a>

                    <div class="dropdown-menu fade-up m-0">

                        @forelse ($unitKerjas as $unit)
                            <a href="{{ route('unit-kerja.show', $unit->slug) }}"
                                class="dropdown-item {{ request()->is('unit-kerja/' . $unit->slug) ? 'active' : '' }}">
                                {{ $unit->name }}
                            </a>
                        @empty
                            <span class="dropdown-item text-muted">
                                Data Unit Kerja belum tersedia
                            </span>
                        @endforelse

                    </div>
                </div>
                {{-- == --}}
                {{-- == --}}
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle {{ request()->is('program*') ? 'active' : '' }}"
                        data-bs-toggle="dropdown">
                        Program Kegiatan
                    </a>

                    <div class="dropdown-menu fade-up m-0">

                        @forelse ($ProgramKegiatans as $program)
                            <a href="{{ route('program.show', $program->slug) }}"
                                class="dropdown-item {{ request()->is('program/' . $program->slug) ? 'active' : '' }}">
                                {{ $program->name }}
                            </a>
                        @empty
                            <span class="dropdown-item text-muted">
                                Data Program Kegiatans Kerja belum tersedia
                            </span>
                        @endforelse

                    </div>
                </div>
                {{-- == --}}
                {{-- == --}}
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle {{ request()->is('skm*') ? 'active' : '' }}"
                        data-bs-toggle="dropdown">
                        skm
                    </a>

                    <div class="dropdown-menu fade-up m-0">

                        @forelse ($Skms as $skm)
                            <a href="{{ route('skm.show', $skm->slug) }}"
                                class="dropdown-item {{ request()->is('skm/' . $skm->slug) ? 'active' : '' }}">
                                {{ $skm->name }}
                            </a>
                        @empty
                            <span class="dropdown-item text-muted">
                                Data SURVEI KEPUASAN MASYARAKAT belum tersedia
                            </span>
                        @endforelse

                    </div>
                </div>
                {{-- == --}}
                {{-- == --}}
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle {{ request()->is('ppid*') ? 'active' : '' }}"
                        data-bs-toggle="dropdown">
                        ppid
                    </a>

                    <div class="dropdown-menu fade-up m-0">

                        @forelse ($Ppids as $ppid)
                            <a href="{{ route('ppid.show', $ppid->slug) }}"
                                class="dropdown-item {{ request()->is('ppid/' . $ppid->slug) ? 'active' : '' }}">
                                {{ $ppid->name }}
                            </a>
                        @empty
                            <span class="dropdown-item text-muted">
                                Data SURVEI KEPUASAN MASYARAKAT belum tersedia
                            </span>
                        @endforelse

                    </div>
                </div>
                {{-- == --}}
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle {{ request()->is('blog*') ? 'active' : '' }}"
                        data-bs-toggle="dropdown">
                        Blog
                    </a>

                    <div class="dropdown-menu fade-up m-0">
                        {{-- Link semua Blog --}}
                        <a href="{{ url('/blog') }}"
                            class="dropdown-item {{ request()->is('blog') ? 'active' : '' }}">
                            Semua Blog
                        </a>

                        <div class="dropdown-divider"></div>

                        {{-- Kategori blog --}}
                        @forelse ($CategoryBlog as $kategori)
                            <a href="{{ url('/blog/kategori/' . $kategori->slug) }}"
                                class="dropdown-item {{ request()->is('blog/kategori/' . $kategori->slug) ? 'active' : '' }}">
                                {{ $kategori->nama }}
                            </a>
                        @empty
                            <span class="dropdown-item text-muted">
                                Belum ada kategori
                            </span>
                        @endforelse
                    </div>
                </div>

                <a href="{{ url('/faq') }}"
                    class="nav-item nav-link {{ request()->is('faq*') ? 'active' : '' }}">Faq</a>

                <a href="{{ url('/kontak') }}"
                    class="nav-item nav-link {{ request()->is('kontak*') ? 'active' : '' }}">Kontak</a>
            </div>
            <a href="{{ '/admin' }}" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Login<i
                    class="fa fa-sign-out-alt ms-3"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->

    {{-- alert here --}}
    @if (session('success'))
        <div class="alert alert-success text-center" id="flash-message">
            {{ session('success') }}
        </div>
    @endif
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    {{-- alert end  --}}

    @yield('content')



    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">

                <div class="col-lg-4 col-md-6">
                    <h4 class="text-light mb-4">Kontak</h4>

                    @if (!empty($Kontak?->address))
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt me-3"></i>
                            {{ $Kontak->address }}
                        </p>
                    @endif

                    @if (!empty($Kontak?->phone))
                        <p class="mb-2">
                            <i class="fa fa-phone-alt me-3"></i>
                            {{ $Kontak->phone }}
                        </p>
                    @endif

                    @if (!empty($Kontak?->email))
                        <p class="mb-2">
                            <i class="fa fa-envelope me-3"></i>
                            {{ $Kontak->email }}
                        </p>
                    @endif

                    {{-- SOCIAL MEDIA --}}
                    @if ($SocialMedia->count())
                        <div class="d-flex pt-2">
                            @foreach ($SocialMedia as $sosmed)
                                @if (!empty($sosmed->url) && !empty($sosmed->icon))
                                    <a class="btn btn-outline-light btn-social me-1" href="{{ $sosmed->url }}"
                                        target="_blank" rel="noopener" title="{{ ucfirst($sosmed->name) }}">
                                        <i class="{{ $sosmed->icon }}"></i>
                                    </a>
                                @endif
                            @endforeach
                        </div>
                    @endif
                </div>

                <div class="col-lg-4 col-md-6">
                    <h4 class="text-light mb-4">Tautan </h4>
                    @foreach ($tautans as $itemTautan)
                        <p class="mb-2">
                            <i class="fa fa-angle-right me-2"></i>
                            <a href="{{ $itemTautan->url }}" class="text-light"
                                target="_blank">{{ $itemTautan->name }}</a>
                        </p>
                    @endforeach
                </div>
                @if (!empty($Kontak?->maps_embed))
                    <div class="col-lg-4 col-md-6">
                        <h4 class="text-light mb-4">Maps</h4>

                        <div class="ratio ratio-4x3 rounded overflow-hidden">
                            {!! $Kontak->maps_embed !!}
                        </div>
                    </div>
                @endif


            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; {{ date('Y') }}
                        <a class="border-bottom" href="https://kontakk.com/web.jasa/">
                            {{ $Kontak->name ?? config('app.name') }}
                        </a>
                        . All Right Reserved.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i
            class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <!-- jQuery (WAJIB PALING ATAS) -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <!-- Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Plugins -->
    <script src="{{ asset('template/lib/wow/wow.min.js') }}"></script>
    <script src="{{ asset('template/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('template/lib/waypoints/waypoints.min.js') }}"></script>
    <script src="{{ asset('template/lib/counterup/counterup.min.js') }}"></script>
    <script src="{{ asset('template/lib/owlcarousel/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('template/lib/isotope/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('template/lib/lightbox/js/lightbox.min.js') }}"></script>

    <!-- Template JS -->
    <script src="{{ asset('template/js/main.js') }}"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    @stack('scripts')
</body>

</html>
