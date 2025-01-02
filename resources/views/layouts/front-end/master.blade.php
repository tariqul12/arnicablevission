<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>{{ $company_front->company_name }} | @yield('title')</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{ asset($company_front->favicon) }}">

    @include('layouts.front-end.includes.style')
</head>

<body>

    <!-- ==================== Scroll-Top Area (Start) ==================== -->
    <a href="#" class="scroll-top">
        <i class="fa-solid fa-arrow-up-long"></i>
    </a>
    <!-- ==================== Scroll-Top Area (End) ==================== -->

    <!-- ==================== Header Area (Start) ==================== -->
    @include('layouts.front-end.includes.header')
    <!-- ==================== Header Area (End) ==================== -->

    @yield('content')

    <!-- ==================== Footer Area (Start) ==================== -->
    @include('layouts.front-end.includes.footer')
    <!-- ==================== Footer Area (End) ==================== -->

    @include('layouts.front-end.includes.script')

</body>

</html>
