<?php

/**
 * Checkout coupon form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-coupon.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.4.4
 */

defined('ABSPATH') || exit;

if (!wc_coupons_enabled()) { // @codingStandardsIgnoreLine.
	return;
}
?>

<div class="coupon-area pt-110">
	<div class="container">
		<div class="coupon-accordion">
			<h3><?= esc_html__('Have a coupon?', 'woocommerce') ?> <span id="showcoupon"><?= esc_html__('Click here to enter your code', 'woocommerce') ?></span></h3>
			<div id="checkout_coupon" class="coupon-checkout-content">
				<div class="coupon-info">
					<form class="checkout_coupon woocommerce-form-coupon" style="display:none" method="post">
						<p><?php esc_html_e('If you have a coupon code, please apply it below.', 'woocommerce'); ?></p>
						<p class="checkout-coupon">
							<input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="<?php esc_attr_e('Coupon code', 'woocommerce'); ?>" />
							<button type="submit" class="default-btn" name="apply_coupon" value="<?php esc_attr_e('Apply coupon', 'woocommerce'); ?>"><?php esc_html_e('Apply coupon', 'woocommerce'); ?></button>
						</p>
						<div class="clear"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>