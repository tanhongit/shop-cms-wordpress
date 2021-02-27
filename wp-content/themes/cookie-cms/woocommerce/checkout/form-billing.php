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
	<h3><?= esc_html__('Billing Details', 'woocommerce') ?></h3>
	<div class="row">
		<div class="col-lg-12">
			<div class="country-select">
				<label for="billing_country"><?= esc_html__('Country', 'woocommerce') ?> <span class="required">*</span></label>
				<select name="billing_country" id="billing_country" autocomplete="country" aria-hidden="true">
					<option value="VN">VietNam</option>
					<option value="BL">Bangladesh</option>
					<option value="AL">Algeria</option>
					<option value="AF">Afghanistan</option>
					<option value="GH">Ghana</option>
					<option value="AL">Albania</option>
					<option value="BA">Bahrain</option>
					<option value="CO">Colombia</option>
					<option value="DR">Dominican Republic</option>
				</select>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label for="billing_first_name"><?= esc_html__('First Name', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" class="input-text " name="billing_first_name" id="billing_first_name" placeholder="" value="" autocomplete="given-name">
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label for="billing_last_name"><?= esc_html__('Last Name', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" class="input-text " name="billing_last_name" id="billing_last_name" placeholder="" value="" autocomplete="family-name">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<label for="billing_company"><?= esc_html__('Company Name', 'woocommerce') ?></label>
				<input type="text" class="input-text " name="billing_company" id="billing_company" placeholder="" value="" autocomplete="organization">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<label for="billing_address_1"><?= esc_html__('Address', 'woocommerce') ?> <span class="required">*</span></label>
				<input type="text" class="input-text " name="billing_address_1" id="billing_address_1" placeholder="House number and street name" value="" autocomplete="address-line1" data-placeholder="House number and street name">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<input type="text" class="input-text " name="billing_address_2" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional)" value="" autocomplete="address-line1" data-placeholder="Apartment, suite, unit etc. (optional)">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="checkout-form-list">
				<label for="billing_city"><?= esc_html__('Town / City', 'woocommerce') ?><span class="required">*</span></label>
				<input type="text" class="input-text " name="billing_city" id="billing_city" placeholder="Town / City" value="" autocomplete="address-level2">
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label for="billing_phone">Phone<span class="required">*</span></label>
				<input type="text" class="input-text " name="billing_phone" id="billing_phone" placeholder="" value="" autocomplete="tel">
			</div>
		</div>
		<div class="col-lg-6">
			<div class="checkout-form-list">
				<label for="billing_email"><?= esc_html__('Email Address', 'woocommerce') ?><span class="required">*</span></label>
				<input type="email" class="input-text " name="billing_email" id="billing_email" placeholder="" value="" autocomplete="email username">
			</div>
		</div>
	</div>
	<div class="different-address">
		<div class="order-notes">
			<div class="checkout-form-list">
				<label for="order_comments"><?= esc_html__('Order Notes', 'woocommerce') ?></label>
				<textarea name="order_comments" id="checkout-mess" placeholder="Notes about your order, e.g. special notes for delivery." rows="10" cols="40"></textarea>
			</div>
		</div>
	</div>

	<?php do_action('woocommerce_after_checkout_billing_form', $checkout); ?>
</div>