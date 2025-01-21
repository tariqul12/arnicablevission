@extends('layouts.front-end.master')
@section('title', 'Pay Bill')
@section('content')
    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                    url('{{ asset($title_banner->image) }}');">

        <div class="title">
            <h2>Pay Bill</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">Pay Bill</span>
        </div>
    </div>
    <!-- ==================== Page-Title (End) ==================== -->

    <!-- ==================== pay Bill Area (Start) ==================== -->
    <section class="pricing">
        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>Pay Bill</span><i class="fa-solid fa-wifi"></i></div>
            <h2>Bkash</h2>
        </div>
        <div class="box-container" style="width: 80%; margin: auto;">
            <img src="{{ asset($company_front->payment_method_image) }}" alt="logo">
        </div>
    </section>
    <!-- ==================== pay Bill Area (End) ==================== -->


@endsection
