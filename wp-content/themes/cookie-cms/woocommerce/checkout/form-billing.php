<?php

/**
 * Checkout billing information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-billing.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 * @global WC_Checkout $checkout
 */

defined('ABSPATH') || exit;
?>
<div class="checkbox-form">
	<?php if (wc_ship_to_billing_address_only() && WC()->cart->needs_shipping()) : ?>

		<h3><?php esc_html_e('Billing &amp; Shipping', 'woocommerce'); ?></h3>

	<?php else : ?>

		<h3><?php esc_html_e('Billing details', 'woocommerce'); ?></h3>

	<?php endif; ?>

	<?php do_action('woocommerce_before_checkout_billing_form', $checkout); ?>
	<div class="woocommerce-billing-fields__field-wrapper">
		<?php
		$fields = $checkout->get_checkout_fields('billing');

		foreach ($fields as $key => $field) {
			woocommerce_form_field($key, $field, $checkout->get_value($key));
		}
		?>
	</div>
	<!-- <div class="row">
		<div class="col-lg-12">
			<div class="country-select">
				<label><?= esc_html__('Country', 'woocommerce') ?> <span class="required">*</span></label>
				<select>
					<option value="volvo">Bangladesh</option>
					<option value="saab">Algeria</option>
					<option value="mercedes">Afghanistan</option>
					<option value="audi">Ghana</option>
					<option value="audi2">Albania</option>
					<option value="audi3">Bahrain</option>
					<option value="audi4">Colombia</option>
					<option value="audi5">Dominican Republic</option>
				</select>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label><?= esc_html__('First Name', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" placeholder="" />
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label><?= esc_html__('Last Name', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" placeholder="" />
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<label><?= esc_html__('Company Name', 'woocommerce') ?></label>
				<input type="text" placeholder="" />
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<label><?= esc_html__('Address', 'woocommerce') ?> <span class="required">*</span></label>
				<input type="text" placeholder="Street address" />
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<input type="text" placeholder="Apartment, suite, unit etc. (optional)" />
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<label><?= esc_html__('Town / City', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" placeholder="Town / City" />
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label><?= esc_html__('State', ' Country') ?><span class="required">*</span></label>
				<input type="text" placeholder="" />
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label><?= esc_html__('Postcode / Zip', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" placeholder="Postcode / Zip" />
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label><?= esc_html__('Email Address', 'woocommerce') ?><span class="required">*</span></label>
				<input type="email" placeholder="" />
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label><?= esc_html__('Phone', 'woocommerce') ?> <span class="required">*</span></label>
				<input type="text" placeholder="Postcode / Zip" />
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list create-acc">
				<input id="cbox" type="checkbox" />
				<label for="cbox"><?= esc_html__('Create an account', 'woocommerce') ?></label>
			</div>
			<div id="cbox_info" class="checkout-form-list create-account">
				<p><?= esc_html__('Create an account by entering the information below. If you are a returning customer please login at the top of the page.', 'woocommerce') ?></p>
				<label><?= esc_html__('Account password *', 'woocommerce') ?><span class="required">*</span></label>
				<input type="password" placeholder="password" />
			</div>
		</div>
	</div>
	<div class="different-address">
		<div class="order-notes">
			<div class="checkout-form-list">
				<label><?= esc_html__('order Notes', 'woocommerce') ?></label>
				<textarea id="checkout-mess" cols="30" rows="10" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
			</div>
		</div>
	</div> -->


	<?php do_action('woocommerce_after_checkout_billing_form', $checkout); ?>
</div>