<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{$_modx->config.site_url}">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="robots" content="index, follow" />
    <title>Mioca - Handmade Goods eCommerce HTML Template</title>
    <meta name="description" content="Mioca - Handmade Goods eCommerce HTML Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Add site Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon/favicon.ico" type="image/png">

    <!-- vendor css (Icon Font) -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.bundle.min.css" />
    <link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="assets/css/vendor/font.awesome.css" />

    <!-- plugins css (All Plugins Files) -->
    <link rel="stylesheet" href="assets/css/plugins/animate.css" />
    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/nice-select.css" />
    <link rel="stylesheet" href="assets/css/plugins/venobox.css" />

    <!-- Main Style -->
    <link rel="stylesheet" href="assets/css/style.css" />

</head>
<body>
{'!getCarts' | snippet: [
'tpls' => '{
        "maincart": { "wrapper":"@FILE chunks/msac/maincart.tpl","row":"@FILE chunks/msac/maincartrow.tpl" },
        "cart": { "wrapper":"@FILE chunks/msac/cart.tpl","row":"@FILE chunks/msac/cartrow.tpl" },
        "minicart": { "wrapper":"@FILE chunks/msac/minicart.tpl" }
    }'
]}

<!-- Header Area Start -->
<header>
    <div class="header-main sticky-nav ">
        <div class="container position-relative">
            <div class="row">
                <div class="col-auto align-self-center">
                    <div class="header-logo">
                        <a href="index.html"><img src="assets/images/logo/logo.png" alt="Site Logo" /></a>
                    </div>
                </div>
                <div class="col align-self-center d-none d-lg-block">
                    <div class="main-menu">
                        <ul>
                            {set $menu = 'pdoResources' | snippet: [
                                'parents' => 0,
                                'resources' => '1,179,180',
                                'tpl' => '@INLINE <li><a href="{$uri}">{$menutitle?:$pagetitle}</a></li>',
                                'sortby' => ['menuindex' => 'ASC']
                            ]}
                            {$menu}
                        </ul>
                    </div>
                </div>
                <!-- Header Action Start -->
                <div class="col col-lg-auto align-self-center pl-0">
                    <div class="header-actions">
                        <a href="#offcanvas-cart" data-msac-cart="minicart"  data-mspd-cart-wrap class="header-action-btn header-action-btn-cart offcanvas-toggle pr-0">
                            {'minicart' | placeholder}
                        </a>
                        <a href="#offcanvas-mobile-menu"
                           class="header-action-btn header-action-btn-menu offcanvas-toggle d-lg-none">
                            <i class="pe-7s-menu"></i>
                        </a>
                    </div>
                    <!-- Header Action End -->
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header Area End -->
<div class="offcanvas-overlay"></div>

<!-- OffCanvas Cart Start -->
<div id="offcanvas-cart" class="offcanvas offcanvas-cart">
    <div class="inner" data-msac-cart="cart" data-mspd-cart-wrap>
        {'cart' | placeholder}
    </div>
</div>
<!-- OffCanvas Cart End -->

<!-- OffCanvas Menu Start -->
<div id="offcanvas-mobile-menu" class="offcanvas offcanvas-mobile-menu">
    <button class="offcanvas-close"></button>

    <div class="inner customScroll">

        <div class="offcanvas-menu mb-4">
            <ul>
                {$menu}
            </ul>
        </div>
    </div>
</div>
<!-- OffCanvas Menu End -->
{block 'content'}
{/block}

<!-- Footer Area Start -->
<div class="footer-area">
    <div class="footer-container">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <!-- Start single blog -->
                    <div class="col-md-6 col-sm-6 col-lg-3 mb-md-30px mb-lm-30px">
                        <div class="single-wedge">
                            <h4 class="footer-herading">Information</h4>
                            <div class="footer-links">
                                <div class="footer-row">
                                    <ul class="align-items-center">
                                        <li class="li"><a class="single-link" href="about.html">About us</a></li>
                                        <li class="li"><a class="single-link" href="#">Delivery information</a></li>
                                        <li class="li"><a class="single-link" href="privacy-policy.html">Privacy
                                                                                                         Policy</a></li>
                                        <li class="li"><a class="single-link" href="#">Sales</a></li>
                                        <li class="li"><a class="single-link" href="#">Terms & Conditions</a></li>
                                        <li class="li"><a class="single-link" href="#">Shipping Policy</a></li>
                                        <li class="li"><a class="single-link" href="#">EMI Payment</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End single blog -->
                    <!-- Start single blog -->
                    <div class="col-md-6 col-lg-3 col-sm-6 mb-lm-30px">
                        <div class="single-wedge">
                            <h4 class="footer-herading">Account</h4>
                            <div class="footer-links">
                                <div class="footer-row">
                                    <ul class="align-items-center">
                                        <li class="li"><a class="single-link" href="my-account.html"> My account</a>
                                        </li>
                                        <li class="li"><a class="single-link" href="cart.html">My orders</a></li>
                                        <li class="li"><a class="single-link" href="#">Returns</a></li>
                                        <li class="li"><a class="single-link"
                                                          href="shop-left-sidebar.html">Shipping</a></li>
                                        <li class="li"><a class="single-link" href="wishlist.html">Wishlist</a></li>
                                        <li class="li"><a class="single-link" href="#">How Does It Work</a></li>
                                        <li class="li"><a class="single-link" href="#">Merchant Sign Up</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End single blog -->
                    <!-- Start single blog -->
                    <div class="col-md-6 col-lg-2 col-sm-6 mb-sm-30px">
                        <div class="single-wedge">
                            <h4 class="footer-herading">Store </h4>
                            <div class="footer-links">
                                <div class="footer-row">
                                    <ul class="align-items-center">
                                        <li class="li"><a class="single-link" href="index.html">Affiliate</a></li>
                                        <li class="li"><a class="single-link"
                                                          href="shop-left-sidebar.html">Bestsellers</a></li>
                                        <li class="li"><a class="single-link" href="#">Discount</a></li>
                                        <li class="li"><a class="single-link" href="#">Latest products</a></li>
                                        <li class="li"><a class="single-link" href="#">Sale</a></li>
                                        <li class="li"><a class="single-link" href="#">All Collection</a></li>
                                        <li class="li"><a class="single-link" href="contact.html">Contact Us</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End single blog -->
                    <!-- Start single blog -->
                    <div class="col-md-6 col-lg-4 col-md-6 col-sm-6 pl-120px line-shape">
                        <div class="single-wedge ">

                            <h4 class="footer-herading">Contact Us</h4>
                            <div class="footer-links">
                                <!-- News letter area -->
                                <p class="mail">If you have any question.please <br>
                                                contact us at <a href="mailto:demo@example.com">demo@example.com</a> </p>
                                <p class="address"><i class="pe-7s-map-marker"></i> <span>Your address goes here.
                                        <br>
                                                                                          123, Address.</span> </p>
                                <p class="phone m-0"><i class="pe-7s-phone"></i><span><a href="tel:0123456789">+ 0 123
                                                                                                               456 789</a> <br> <a href="tel:0123456789">+ 0 123 456 789</a></span></p>

                                <!-- News letter area  End -->
                            </div>
                        </div>
                    </div>
                    <!-- End single blog -->
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="line-shape-top">
                    <div class="row flex-md-row-reverse align-items-center">
                        <div class="col-md-6 text-center text-md-end">
                            <div class="payment-mth"><a href="#"><img class="img img-fluid"
                                                                      src="assets/images/icons/payment.png" alt="payment-image"></a></div>
                        </div>
                        <div class="col-md-6 text-center text-md-start">
                            <p class="copy-text"> © 2021 <strong>Mioca.</strong> Made With <i class="fa fa-heart"
                                                                                              aria-hidden="true"></i> By <a class="company-name"
                                                                                                                            href="https://hasthemes.com/">
                                    <strong> HasThemes</strong></a>.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Area End -->


<!-- Global Vendor, plugins JS -->

<!-- Vendor JS -->
<script src="assets/js/vendor/jquery-3.5.1.min.js"></script>

<script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
<script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
<script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>

<!--Plugins JS-->
<script src="assets/js/plugins/swiper-bundle.min.js"></script>
<script src="assets/js/plugins/jquery-ui.min.js"></script>
<script src="assets/js/plugins/jquery.nice-select.min.js"></script>
<script src="assets/js/plugins/countdown.js"></script>
<script src="assets/js/plugins/scrollup.js"></script>
<script src="assets/js/plugins/jquery.zoom.min.js"></script>
<script src="assets/js/plugins/venobox.min.js"></script>
<script src="assets/js/plugins/ajax-mail.js"></script>

<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<!-- <script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script> -->

<!-- Main Js -->
<script src="assets/js/main.js"></script>
<script src="assets/js/discounts.js"></script>
</body>
</html>
