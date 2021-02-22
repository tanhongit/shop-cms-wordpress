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
				<hr>

				<?php foreach (WC()->cart->get_coupons() as $code => $coupon) : ?>
					<div class="single-total-content d-flex justify-content-between">
						<span><?php wc_cart_totals_coupon_label($coupon); ?></span>
						<span class="c-total-price"><?php wc_cart_totals_coupon_html($coupon); ?></span>
					</div>
				<?php endforeach; ?>
				<hr>

				<?php if (WC()->cart->needs_shipping() && WC()->cart->show_shipping()) : ?>
					<?php do_action('woocommerce_cart_totals_before_shipping'); ?>
					<?php wc_cart_totals_shipping_html(); ?>
					<?php do_action('woocommerce_cart_totals_after_shipping'); ?>
				<?php elseif (WC()->cart->needs_shipping() && 'yes' === get_option('woocommerce_enable_shipping_calc')) : ?>
					<div class="single-total-content d-flex justify-content-between">
						<span><?php esc_html_e('Shipping', 'woocommerce'); ?></span>
						<span class="c-total-price"><?php woocommerce_shipping_calculator(); ?></span>
					</div>
				<?php endif; ?>

				<?php
				if (wc_tax_enabled() && !WC()->cart->display_prices_including_tax()) {
					$taxable_address = WC()->customer->get_taxable_address();
					$estimated_text  = '';

					if (WC()->customer->is_customer_outside_base() && !WC()->customer->has_calculated_shipping()) {
						/* translators: %s location. */
						$estimated_text = sprintf(' <small>' . esc_html__('(estimated for %s)', 'woocommerce') . '</small>', WC()->countries->estimated_for_prefix($taxable_address[0]) . WC()->countries->countries[$taxable_address[0]]);
					}

					if ('itemized' === get_option('woocommerce_tax_total_display')) {
						foreach (WC()->cart->get_tax_totals() as $code => $tax) { // phpcs:ignore WordPress.WP.GlobalVariablesOverride.Prohibited
				?>
							<div class="single-total-content d-flex justify-content-between">
								<span><?php echo esc_html($tax->label) . $estimated_text; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped 
										?></span>
								<span data-title="<?php echo esc_attr($tax->label); ?>"><?php echo wp_kses_post($tax->formatted_amount); ?></span>
							</div>
						<?php
						}
					} else {
						?>
						<div class="single-total-content d-flex justify-content-between">
							<span><?php echo esc_html(WC()->countries->tax_or_vat()) . $estimated_text; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped 
									?></span>
							<span class="c-total-price"><?php wc_cart_totals_taxes_total_html(); ?></span>
						</div>
				<?php
					}
				}
				?>

				<?php do_action('woocommerce_cart_totals_before_order_total'); ?>

				<hr>
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