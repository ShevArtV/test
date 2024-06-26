<!DOCTYPE html>
<html lang="en">
<head>
    <title>Goru – Ecommerce HTML5 Responsive Template</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <base href="{$_modx->config.site_url}">
    <!-- Include All CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/themewar-icons.css"/>
    <link rel="stylesheet" href="assets/css/flaticon.css"/>
    <link rel="stylesheet" href="assets/css/animate.css"/>
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/settings.css">
    <link rel="stylesheet" href="assets/css/lightcase.css">
    <link rel="stylesheet" href="assets/css/preset.css"/>
    <link rel="stylesheet" href="assets/css/ignore_in_wp.css"/>
    <link rel="stylesheet" href="assets/css/theme.css"/>
    <link rel="stylesheet" href="assets/css/responsive.css"/>
    <!-- End Include All CSS -->

    <!-- Favicon Icon -->
    <link rel="icon"  type="image/png" href="assets/images/favicon.png">
    <!-- Favicon Icon -->
</head>
<body>
<!-- Preloader Start -->
<div class="preloader" id="preloader">
    <div class="la-ball-scale-multiple la-2x">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- Preloader End -->

<!-- Header Start -->
<header class="header-01 fix-header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 col-md-2">
                <div class="logo">
                    <a href="/">
                        <img src="assets/images/logo.png" alt="Goru"/>
                    </a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <nav class="mainmenu mobile-menu">
                    <div class="mobile-btn">
                        <a href="javascript: void(0);"><span>Menu</span><i class="twi-bars"></i></a>
                    </div>
                    <ul>
                        <li class="active menu-item-has-children">
                            <a href="/">Home</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-4 col-md-4">
                {'!msMiniCart' | snippet: [
                'tpl' => '@FILE chunks/minicart.tpl'
                ]}
            </div>
        </div>
    </div>
</header>
<!-- Header End -->
<!-- Popup Search -->
<section class="popup-search-sec">
    <div class="popup-search-overlay"></div>
    <div class="overlay-popup">
        <a href="javascript:void(0);" class="search-closer">x</a><!-- Close Popup Btn -->
        <div class="middle-search">
            <div class="popup-search-form"><!-- Search Form Start -->
                <form method="get" action="#">
                    <input type="search" name="s" id="s" placeholder="Search...">
                    <button type="submit"><i class="twi-search"></i></button>
                </form><!-- Search Form End -->
            </div>
        </div>
    </div>
</section>
<!-- Popup Search -->
{block 'content'}
{/block}

<!-- Footer Start -->
<footer class="footer-01">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <aside class="widget about-widget">
                    <div class="foo-logo">
                        <a href="index.html"><img src="assets/images/logo.png" alt=""/></a>
                    </div>
                    <p>
                        Sed ut perspiciatis unde omnis iste natus er sit voluptatem accusantium dolore.ea commo
                        do consequat. Duis aute irure dolor in re
                        prehenderit in.
                    </p>
                    <div class="ab-social">
                        <a href="#"><i class="twi-facebook"></i></a>
                        <a href="#"><i class="twi-twitter"></i></a>
                        <a href="#"><i class="twi-instagram"></i></a>
                        <a href="#"><i class="twi-linkedin"></i></a>
                    </div>
                </aside>
            </div>
            <div class="col-lg-2 col-md-4 col-custome-1">
                <aside class="widget">
                    <h3 class="widget-title">Useful Links</h3>
                    <ul>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Return Policy</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Terms & Conditions</a></li>
                    </ul>
                </aside>
            </div>
            <div class="col-lg-2 col-md-4 col-custome-2">
                <aside class="widget">
                    <h3 class="widget-title">Account</h3>
                    <ul>
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">Log in</a></li>
                        <li><a href="#">Sign Up</a></li>
                        <li><a href="#">Purchases</a></li>
                        <li><a href="#">Shipping Address</a></li>
                    </ul>
                </aside>
            </div>
            <div class="col-lg-2 col-md-6 col-custome-3">
                <aside class="widget contact-widget">
                    <h3 class="widget-title">Contact & Address</h3>
                    <p>
                        123 Street, Gandy Street, Syracuse
                        New York - 13221.
                    </p>
                    <p>
                        Phone: +1 315-234-3812
                        Email: info@goru.com
                    </p>
                </aside>
            </div>
            <div class="col-lg-3 col-md-6 col-custome-4">
                <aside class="widget">
                    <h3 class="widget-title">Subscribe</h3>
                    <form class="subscribe-form" action="#" method="post">
                        <input type="email" name="email" placeholder="admin@mail.com">
                        <button type="submit">Subscribe<i class="twi-long-arrow-alt-right"></i></button>
                    </form>
                </aside>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Ened -->

<!-- Coryight Start -->
<section class="copyright-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-5">
                <ul class="menu-link">
                    <li><a href="#">Privacy Policy</a></li> |
                    <li><a href="#">Terms of Service</a></li>
                </ul>
            </div>
            <div class="col-lg-6 col-md-7">
                <div class="copys-text"><i class="twi-copyright"></i>Copyright WpSmasher 2020 | All Rights Reserved</div>
            </div>
        </div>
    </div>
</section>
<!-- Coryight End -->

<!-- Back To Top -->
<a href="#" id="backtotop"><i class="twi-angle-double-up2"></i></a>

<!-- Include All JS -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/modernizr.custom.js"></script>
<script src="assets/js/jquery.appear.js"></script>
<script src="assets/js/jquery-ui.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.shuffle.min.js"></script>
<script src="assets/js/lightcase.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.plugin.min.js"></script>
<script src="assets/js/jquery.countdown.min.js"></script>
<script src="assets/js/tweenmax.min.js"></script>

<script src="assets/js/jquery.themepunch.tools.min.js"></script>
<script src="assets/js/jquery.themepunch.revolution.min.js"></script>

<!-- Rev slider Add on Start -->
<script src="assets/js/extensions/revolution.extension.actions.min.js"></script>
<script src="assets/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="assets/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="assets/js/extensions/revolution.extension.migration.min.js"></script>
<script src="assets/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="assets/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="assets/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="assets/js/extensions/revolution.extension.video.min.js"></script>
<!-- Rev slider Add on End -->

<script src="assets/js/theme.js"></script>
</body>
</html>
