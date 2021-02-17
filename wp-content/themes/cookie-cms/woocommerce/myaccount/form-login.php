<?php

/**
 * Login Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-login.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 4.1.0
 */

if (!defined('ABSPATH')) {
	exit; // Exit if accessed directly.
}

/**
 * Hook: woocommerce_before_main_content.
 *
 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
 * @hooked woocommerce_breadcrumb - 20
 * @hooked WC_Structured_Data::generate_website_data() - 30
 */
do_action('woocommerce_before_main_content');
?>
<style>
	#username,
	#password {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		box-sizing: border-box;
		border: 3px solid #ccc;
		-webkit-transition: 0.5s;
		transition: 0.5s;
		outline: none;
	}

	#username:focus,
	#password:focus {
		border: 3px solid #555;
	}
</style>
<div class="container">
	<!-- noice -->
	<?= do_action('woocommerce_before_customer_login_form'); ?>

	<?php if ('yes' === get_option('woocommerce_enable_myaccount_registration')) : ?>
		<div class="container">
			<div class="u-columns col2-set" id="customer_login">

				<div class="u-column1 col-1">

				<?php endif; ?>
				<fieldset>
					<legend><?php esc_html_e('Login', 'woocommerce'); ?></legend>

					<form class="woocommerce-form woocommerce-form-login login" method="post">

						<?php do_action('woocommerce_login_form_start'); ?>

						<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide" style="background: #f3f3f3 none repeat scroll 0 0;
					width: 100%;
					padding: 12px 20px;
					margin: 8px 0;
					box-sizing: border-box;">
							<label for="username"><?php esc_html_e('Username or email address', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
							<input type="text" required class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="username" autocomplete="username" value="<?php echo (!empty($_POST['username'])) ? esc_attr(wp_unslash($_POST['username'])) : ''; ?>" />
							<?php // @codingStandardsIgnoreLine 
							?>
						</p>
						<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide" style="background: #f3f3f3 none repeat scroll 0 0;
					width: 100%;
					padding: 12px 20px;
					margin: 8px 0;
					box-sizing: border-box;">
							<label for="password"><?php esc_html_e('Password', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
							<input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password" required id="password" autocomplete="current-password" />
						</p>

						<?php do_action('woocommerce_login_form'); ?>

						<p class="form-row" style="
					width: 100%;
					padding: 5px 20px;
					margin: 3px 0;
					box-sizing: border-box;">
							<label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
								<input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever" /> <span><?php esc_html_e('Remember me', 'woocommerce'); ?></span>
							</label>
							<?php wp_nonce_field('woocommerce-login', 'woocommerce-login-nonce'); ?>
							<hr>
							<button type="submit" class="default-btn" name="login" value="<?php esc_attr_e('Log in', 'woocommerce'); ?>"><?php esc_html_e('Log in', 'woocommerce'); ?></button>
						</p>
						<p class="woocommerce-LostPassword lost_password">
							<a href="<?php echo esc_url(wp_lostpassword_url()); ?>"><?php esc_html_e('Lost your password?', 'woocommerce'); ?></a>
						</p>

						<?php do_action('woocommerce_login_form_end'); ?>

					</form>
				</fieldset>
				<?php if ('yes' === get_option('woocommerce_enable_myaccount_registration')) : ?>

				</div>

				<div class="u-column2 col-2">

					<h2><?php esc_html_e('Register', 'woocommerce'); ?></h2>

					<form method="post" class="woocommerce-form woocommerce-form-register register" <?php do_action('woocommerce_register_form_tag'); ?>>

						<?php do_action('woocommerce_register_form_start'); ?>

						<?php if ('no' === get_option('woocommerce_registration_generate_username')) : ?>

							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="reg_username"><?php esc_html_e('Username', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
								<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="reg_username" autocomplete="username" value="<?php echo (!empty($_POST['username'])) ? esc_attr(wp_unslash($_POST['username'])) : ''; ?>" /><?php // @codingStandardsIgnoreLine 
																																																																				?>
							</p>

						<?php endif; ?>

						<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
							<label for="reg_email"><?php esc_html_e('Email address', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
							<input type="email" class="woocommerce-Input woocommerce-Input--text input-text" name="email" id="reg_email" autocomplete="email" value="<?php echo (!empty($_POST['email'])) ? esc_attr(wp_unslash($_POST['email'])) : ''; ?>" /><?php // @codingStandardsIgnoreLine 
																																																																?>
						</p>

						<?php if ('no' === get_option('woocommerce_registration_generate_password')) : ?>

							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="reg_password"><?php esc_html_e('Password', 'woocommerce'); ?>&nbsp;<span class="required">*</span></label>
								<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password" id="reg_password" autocomplete="new-password" />
							</p>

						<?php else : ?>

							<p><?php esc_html_e('A password will be sent to your email address.', 'woocommerce'); ?></p>

						<?php endif; ?>

						<?php do_action('woocommerce_register_form'); ?>

						<p class="woocommerce-form-row form-row">
							<?php wp_nonce_field('woocommerce-register', 'woocommerce-register-nonce'); ?>
							<button type="submit" class="woocommerce-Button woocommerce-button button woocommerce-form-register__submit" name="register" value="<?php esc_attr_e('Register', 'woocommerce'); ?>"><?php esc_html_e('Register', 'woocommerce'); ?></button>
						</p>

						<?php do_action('woocommerce_register_form_end'); ?>

					</form>

				</div>

			</div>
		<?php endif; ?>
		</div>
		<?php do_action('woocommerce_after_customer_login_form'); ?>