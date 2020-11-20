<!-- Footer Area Start -->
<footer class="footer-area">
    <!-- Footer Top Area Start -->
    <div class="footer-top bg-4 pt-120 pb-120">
        <!-- Service Area Start -->
        <div class="service-area pt-50">
            <div class="container">
                <div class="service-container">
                    <div class="service-content">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <div class="single-service">
                                    <div class="service-image">
                                        <img src="<?= GET_TEMP_URL ?>/assets/img/icon/rocket.png" alt="">
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
                                        <img src="<?= GET_TEMP_URL ?>/assets/img/icon/money.png" alt="">
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
                                        <img src="<?= GET_TEMP_URL ?>/assets/img/icon/support.png" alt="">
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
                        <p>Copyright &copy; <a href="#">Team TNT</a>. All Rights Reserved</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="payment-img d-flex justify-content-end">
                        <img src="<?= GET_TEMP_URL ?>/assets/img/payment.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Bottom Area End -->
</footer>
<!-- Footer Area End -->

<!-- All js here -->
<script src="<?= GET_TEMP_URL ?>/assets/js/vendor/jquery-3.2.1.min.js"></script>
<script src="<?= GET_TEMP_URL ?>/assets/js/popper.min.js"></script>
<script src="<?= GET_TEMP_URL ?>/assets/js/bootstrap.min.js"></script>
<script src="<?= GET_TEMP_URL ?>/assets/js/plugins.js"></script>
<script src="<?= GET_TEMP_URL ?>/assets/js/ajax-mail.js"></script>
<script src="<?= GET_TEMP_URL ?>/assets/js/main.js"></script>

</body>

</html>