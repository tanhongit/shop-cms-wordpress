<?php

/**
 * Cart totals
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart-totals.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 2.3.6
 */

defined('ABSPATH') || exit;

?>
<div class="container">
	<div class="table-total-wrapper d-flex justify-content-end pt-60 <?php echo (WC()->customer->has_calculated_shipping()) ? 'calculated_shipping' : ''; ?>">
		<div class="table-total-content">
			<?php do_action('woocommerce_before_cart_totals'); ?>
			<h2><?php esc_html_e('Cart totals', 'woocommerce'); ?></h2>
			<div class="table-total-amount">
				<div class="single-total-content d-flex justify-content-between">
					<span><?php esc_html_e('Subtotal', 'woocommerce'); ?></span>
					<span class="c-total-price"><?php wc_cart_totals_subtotal_html(); ?></span>
				</div>
				<!-- <div class="single-total-content d-flex justify-content-between">
                        <span>Shipping</span>
                        <span class="c-total-price"><span>Flat Rate:</span> $0.00</span>
                    </div>
                    <div class="single-total-content d-flex justify-content-end">
                        <a href="#">Calculate shipping</a>
					</div> -->
				<?php do_action('woocommerce_cart_totals_before_order_total'); ?>
				<div class="single-total-content d-flex justify-content-between">
					<span><?php esc_html_e('Total', 'woocommerce'); ?></span>
					<span class="c-total-price"><?php wc_cart_totals_order_total_html(); ?></span>
				</div>
				<?php do_action('woocommerce_cart_totals_after_order_total'); ?>
				<?php do_action('woocommerce_proceed_to_checkout'); ?>
				<?php do_action('woocommerce_after_cart_totals'); ?>
			</div>
		</div>
	</div>
</div>