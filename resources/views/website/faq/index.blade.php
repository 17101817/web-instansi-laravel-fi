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

    <!-- FAQ Content -->
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10">

                <div class="text-center mb-5">
                    <h2 class="fw-bold">Pertanyaan yang Sering Diajukan</h2>
                    <p class="text-muted">
                        Berikut adalah daftar pertanyaan dan jawaban seputar layanan Dinas Sosial
                    </p>
                </div>

                <div class="accordion" id="faqAccordion">

                    @forelse ($faqs as $index => $faq)
                        <div class="accordion-item mb-3 shadow-sm border-0">
                            <h2 class="accordion-header" id="heading{{ $index }}">
                                <button class="accordion-button {{ $index !== 0 ? 'collapsed' : '' }}" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapse{{ $index }}"
                                    aria-expanded="{{ $index === 0 ? 'true' : 'false' }}"
                                    aria-controls="collapse{{ $index }}">
                                    {{ $faq->question }}
                                </button>
                            </h2>

                            <div id="collapse{{ $index }}"
                                class="accordion-collapse collapse {{ $index === 0 ? 'show' : '' }}"
                                aria-labelledby="heading{{ $index }}" data-bs-parent="#faqAccordion">
                                <div class="accordion-body">
                                    {!! nl2br(e($faq->answer)) !!}
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="text-center text-muted">
                            <i class="fa fa-info-circle me-2"></i>
                            Belum ada data FAQ.
                        </div>
                    @endforelse

                </div>

            </div>
        </div>
    </div>
@endsection
