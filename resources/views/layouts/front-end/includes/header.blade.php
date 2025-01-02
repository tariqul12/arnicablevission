<header class="header">

    <!-- ===== Header-1 Area (Start) ===== -->
    <div class="header-1">

        <!-- == Contacts == -->
        <ul class="header-contacts">
            <li><i class="fa-solid fa-location-dot"></i><span>{{ $company_front->company_address }}</span></li>
            <li><i class="fa-solid fa-phone"></i><span>{{ $company_front->contact_phone }}</span></li>
            <li><i class="fa-solid fa-envelope"></i><span class="gmail">{{ $company_front->contact_email }}</span></li>
        </ul>

        <!-- == Social == -->
        <ul class="social-contacts">
            <li><a target="_blank" href="{{ $company_front->facebook_link }}" class="fab fa-facebook-f"></a></li>
            <li><a target="_blank" href="{{ $company_front->twitter_link }}" class="fa-brands fa-x-twitter"></a></li>
            <li><a target="_blank" href="{{ $company_front->instagram_link }}" class="fab fa-instagram"></a></li>
            <li><a target="_blank" href="{{ $company_front->linkedin_link }}" class="fab fa-linkedin"></a></li>
        </ul>

    </div>
    <!-- ===== Header-1 Area (End) ===== -->

    <!-- ===== Header-2 Area (Start) ===== -->
    <div class="header-2">

        <!-- == Logo == -->
        <a class="logo" href="{{ route('home') }}">
            <img src="{{ asset($company_front->logo_jpg) }}" alt="logo">
        </a>

        <div class="container">

            <!-- == Navbar == -->
            <nav class="navbar">

                <a class="nav-btn" href="{{ route('home') }}">Home</a>
                <a class="nav-btn" href="{{ route('about') }}">About</a>
                <a class="nav-btn" href="{{ route('all-service') }}">Services</a>
                <a class="nav-btn" href="{{ route('packeages') }}">Packages</a>
                <a target="_blank" class="nav-btn" href="#">FTP Server</a>
                <a class="nav-btn" href="{{ route('contact') }}">contact</a>
            </nav>

            <!-- == Icon Container == -->
            <div class="icon-container">
                <div id="search-btn" class="icon fa-solid fa-magnifying-glass"></div> <!-- Search Icon -->
                <div id="menu-btn" class="icon fa-solid fa-bars-staggered"></div>
                <a href="{{ route('packageOrder') }}" class="btn">order now</a>
            </div>

            <!-- == Search Container == -->
            <form class="search-container">
                <input type="search" id="search-bar" placeholder="search here" required> <!-- Search Input -->
                <button type="submit"><i class="fas fa-search"></i></button> <!-- Submit Button -->
            </form>

        </div>

    </div>
    <!-- ===== Header-2 Area (End) ===== -->

    <!-- ===== Mobile Menu Area (Start) ===== -->
    <div class="mobile-menu">

        <nav class="mobile-navbar">

            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="{{ route('home') }}">Home</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="{{ route('about') }}">About</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="{{ route('all-service') }}">Services</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="{{ route('packeages') }}">Packages</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <a target="_blank" class="nav-btn" href="#">FTP Server</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="{{ route('contact') }}">Contact Us</a> </div>
            </div>
    </div>

    </nav>

    </div>
    <!-- ===== Mobile Menu Area (End) ===== -->

</header>
