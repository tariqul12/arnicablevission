<footer class="footer"
    style="background-image: linear-gradient(rgba(0, 0, 0, 0.747), rgba(0, 0, 0, 0.849)), 
                      url('{{ asset($footer_banner->image) }}');">

    <div class="box-container">

        <!-- Company Information & Social Media Links -->
        <div class="footer-item">

            <!-- Company Logo -->
            <a class="logo" href="{{ route('home') }}">
                <img src="{{ asset($company_front->logo_png) }}" alt="ISP Company Logo">
            </a>

            <!-- Description -->
            <p>{{ $company_front->company_footer_text }}</p>

            <!-- Contact Information -->
            <div class="info connect">
                <p><i class="fas fa-phone"></i><span>{{ $company_front->contact_phone }}</span></p>
                <p><i class="fas fa-envelope"></i><span class="gmail">{{ $company_front->contact_email }}</span></p>
                <p><i class="fas fa-map-marker-alt"></i><span>{{ $company_front->company_address }}</span></p>
            </div>

            <!-- Social Media Links -->
            <div class="social">
                <a href="{{ $company_front->facebook_link }}" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="{{ $company_front->twitter_link }}" target="_blank"><i class="fa-brands fa-x-twitter"></i></a>
                <a href="{{ $company_front->instagram_link }}" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="{{ $company_front->linkedin_link }}" target="_blank"><i class="fab fa-linkedin"></i></a>
            </div>

        </div>

        <!-- Services Offered -->
        <div class="footer-item">
            <h2>Our Services</h2>
            <div class="info links">
                @foreach ($footer_services as $service)
                    <p><i class="fa-solid fa-wifi"></i><a
                            href="{{ route('service-detail', $service->id) }}">{{ $service->title }}</a>
                    </p>
                @endforeach
            </div>
        </div>

        <!-- Quick Links -->
        <div class="footer-item">
            <h2>Quick Links</h2>
            <div class="info links">
                <p><i class="fa-solid fa-wifi"></i><a href="{{ route('home') }}">Home</a></p>
                <p><i class="fa-solid fa-wifi"></i><a href="{{ route('about') }}">About Us</a></p>
                <p><i class="fa-solid fa-wifi"></i><a href="{{ route('packeages') }}">Packeage</a></p>
                <p><i class="fa-solid fa-wifi"></i><a href="{{ route('contact') }}">Contact Us</a></p>
            </div>
        </div>

        <!-- Newsletter Subscription -->
        <div class="footer-item">

            <h2>Newsletter</h2>
            <p>Stay informed with updates on our latest plans, special offers, and tech insights.</p>
            <form class="dark-form" method="post" id="newsletter-form-2">
                <div class="input-field">
                    <label for="news-email-2" class="fas fa-envelope"></label>
                    <input type="email" id="news-email-2" name="email" class="box"
                        placeholder="Your email address" required>
                </div>
                <button type="submit" class="btn" name="submit" id="submit-2">Subscribe</button>
                <span class="alert" id="msg-2"></span>
            </form>

        </div>

    </div>

    <!-- Company's Name and Copyright -->
    <div class="content">
        <p>Designed By <a target="_blank" class="text-white" href="https://bsdbd.com/">BSDBD</a> | All Rights Reserved
        </p>
    </div>

</footer>
