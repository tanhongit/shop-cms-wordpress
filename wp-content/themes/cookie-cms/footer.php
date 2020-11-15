<!-- Footer Area Start -->
<footer class="footer-area">
    <!-- Footer Top Area Start -->
    <div class="footer-top bg-4 pt-120 pb-120">
        <!-- Newsletter Area Start -->
        <div class="newsletter-area">
            <div class="container text-center">
                <div class="newsletter-container">
                    <h2>Subscribe Newsletter.</h2>
                    <p>Get e-mail updates about our latest shop and special offers.</p>
                    <div class="newsletter-form mc_embed_signup">
                        <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                            <div id="mc_embed_signup_scroll" class="mc-form">
                                <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Enter you email address here..." required>
                                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                <div class="mc-news" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div>
                                <button id="mc-embedded-subscribe" type="submit" name="subscribe" class="default-btn">Subscribe</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="social-icon">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-youtube"></i></a>
                    <a href="#"><i class="fa fa-flickr"></i></a>
                </div>
            </div>
        </div>
        <!-- Newsletter Area End -->
        <!-- Service Area Start -->
        <div class="service-area pt-50">
            <div class="container">
                <div class="service-container">
                    <div class="service-content">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-image">
                                        <img src="<?= get_template_directory_uri() ?>/assets/img/icon/rocket.png" alt="">
                                    </div>
                                    <div class="service-text">
                                        <h3>Free delivery</h3>
                                        <p>Nam liber tempor cum soluta nobis eleifend option congue.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-image">
                                        <img src="<?= get_template_directory_uri() ?>/assets/img/icon/money.png" alt="">
                                    </div>
                                    <div class="service-text">
                                        <h3>Money guarantee</h3>
                                        <p>Nam liber tempor cum soluta nobis eleifend option congue.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-image">
                                        <img src="<?= get_template_directory_uri() ?>/assets/img/icon/support.png" alt="">
                                    </div>
                                    <div class="service-text">
                                        <h3>Online support</h3>
                                        <p>Nam liber tempor cum soluta nobis eleifend option congue.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Area End -->
        <!-- Footer Widget Area Start -->
        <div class="footer-widget-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <?php
                            if (is_active_sidebar('footer-sidebar-1')) {
                                dynamic_sidebar('footer-sidebar-1');
                            }
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3">
                        <div class="single-footer-widget">
                            <?php
                            if (is_active_sidebar('footer-sidebar-2')) {
                                dynamic_sidebar('footer-sidebar-2');
                            }
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3">
                        <div class="single-footer-widget">
                            <?php
                            if (is_active_sidebar('footer-sidebar-3')) {
                                dynamic_sidebar('footer-sidebar-3');
                            }
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-footer-widget">
                            <?php
                            if (is_active_sidebar('footer-sidebar-4')) {
                                dynamic_sidebar('footer-sidebar-4');
                            } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Widget Area End -->
    </div>
    <!-- Footer Top Area End -->
    <!-- Footer Bottom Area Start -->
    <div class="footer-bottom-area pt-15 pb-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-flex col-md-6">
                    <div class="footer-text-bottom">
                        <p>Copyright &copy; <a href="#">Naturecircle</a>. All Rights Reserved</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="payment-img d-flex justify-content-end">
                        <img src="<?= get_template_directory_uri() ?>/assets/img/payment.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Bottom Area End -->
</footer>
<!-- Footer Area End -->

<!-- All js here -->
<script src="<?= get_template_directory_uri() ?>/assets/js/vendor/jquery-3.2.1.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/popper.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/bootstrap.min.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/plugins.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/ajax-mail.js"></script>
<script src="<?= get_template_directory_uri() ?>/assets/js/main.js"></script>

</body>

</html>