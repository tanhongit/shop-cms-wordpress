<?php if (wc_coupons_enabled()) { ?>
    <div class="coupon-area pt-110">
        <div class="container">
            <div class="coupon-accordion">
                <h3>Have a coupon? <span id="showcoupon">Click here to enter your code</span></h3>
                <div id="checkout_coupon" class="coupon-checkout-content">
                    <div class="coupon-info">
                        <form action="<?php echo esc_url(wc_get_cart_url()); ?>" method="post">
                            <p class="checkout-coupon">
                                <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="<?php esc_attr_e('Coupon code', 'woocommerce'); ?>" />
                                <input class="default-btn" type="submit" name="apply_coupon" value="<?php esc_attr_e('Apply coupon', 'woocommerce'); ?>" />
                            </p>
                            <?php do_action('woocommerce_cart_coupon'); ?>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>