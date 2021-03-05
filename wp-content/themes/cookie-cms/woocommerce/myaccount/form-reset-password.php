<?php

/**
 * Lost password reset form.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-reset-password.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.5
 */

defined('ABSPATH') || exit;

do_action('woocommerce_before_reset_password_form');
?>
<style>
	#password_1,
	#password_2 {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		box-sizing: border-box;
		border: 3px solid #ccc;
		-webkit-transition: 0.5s;
		transition: 0.5s;
		outline: none;
	}

	#password_1:focus,
	#password_2:focus {
		border: 3px solid #555;
	}
</style>
<div class="container">
	<fieldset>
		<form method="post" class="woocommerce-ResetPassword lost_reset_password">

			<legend><?php echo apply_filters('woocommerce_reset_password_message', esc_html__('Enter a new password below.', 'woocommerce')); ?></legend><?php // @codingStandardsIgnoreLine 
																																								?>

			<p class="woocommerce-form-row woocommerce-form-row--first form-row form-row-first" style="background: #f3f3f3 none repeat scroll 0 0;
									width: 100%;
									padding: 12px 20px;
									margin: 8px 0;
									box-sizing: border-box;">
				<label for="password_1"><?php esc_html_e('New password', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
				<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password_1" id="password_1" autocomplete="new-password" />
			</p>
			<p class="woocommerce-form-row woocommerce-form-row--last form-row form-row-last" style="background: #f3f3f3 none repeat scroll 0 0;
									width: 100%;
									padding: 12px 20px;
									margin: 8px 0;
									box-sizing: border-box;">
				<label for="password_2"><?php esc_html_e('Re-enter new password', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
				<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password_2" id="password_2" autocomplete="new-password" />
			</p>

			<input type="hidden" name="reset_key" value="<?php echo esc_attr($args['key']); ?>" />
			<input type="hidden" name="reset_login" value="<?php echo esc_attr($args['login']); ?>" />

			<div class="clear"></div>

			<?php do_action('woocommerce_resetpassword_form'); ?>

			<p class="woocommerce-form-row form-row">
				<input type="hidden" name="wc_reset_password" value="true" />
				<button type="submit" class="default-btn" value="<?php esc_attr_e('Save', 'woocommerce'); ?>"><?php esc_html_e('Save', 'woocommerce'); ?></button>
			</p>

			<?php wp_nonce_field('reset_password', 'woocommerce-reset-password-nonce'); ?>

		</form>
	</fieldset>
</div>
<?php
do_action('woocommerce_after_reset_password_form');
