<?php

/**
 * Lost password form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-lost-password.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.2
 */

defined('ABSPATH') || exit;

/**
 * Hook: woocommerce_before_main_content.
 *
 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
 * @hooked woocommerce_breadcrumb - 20
 * @hooked WC_Structured_Data::generate_website_data() - 30
 */
do_action('woocommerce_before_main_content');

do_action('woocommerce_before_lost_password_form');
?>
<style>
	#user_login {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		box-sizing: border-box;
		border: 3px solid #ccc;
		-webkit-transition: 0.5s;
		transition: 0.5s;
		outline: none;
	}

	#user_login:focus {
		border: 3px solid #555;
	}
</style>
<div class="container">
	<form method="post" class="woocommerce-ResetPassword lost_reset_password">

		<p><?php echo apply_filters('woocommerce_lost_password_message', esc_html__('Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.', 'woocommerce')); ?></p><?php // @codingStandardsIgnoreLine 
																																																											?>
		<fieldset>
			<legend>
				<label for="user_login"><?php esc_html_e('Username or email', 'woocommerce'); ?></label>
			</legend>
			<input class="woocommerce-Input woocommerce-Input--text input-text" type="text" name="user_login" id="user_login" autocomplete="username" />

			<div class="clear"></div>

			<?php do_action('woocommerce_lostpassword_form'); ?>

			<p class="woocommerce-form-row form-row" style="
					width: 100%;
					padding: 5px 10px;
					box-sizing: border-box;">
				<input type="hidden" name="wc_reset_password" value="true" />
				<button class="default-btn" type="submit" class="woocommerce-Button button" value="<?php esc_attr_e('Reset password', 'woocommerce'); ?>"><?php esc_html_e('Reset password', 'woocommerce'); ?></button>
			</p>

			<?php wp_nonce_field('lost_password', 'woocommerce-lost-password-nonce'); ?>
		</fieldset>
	</form>
</div>
<?php
do_action('woocommerce_after_lost_password_form');
