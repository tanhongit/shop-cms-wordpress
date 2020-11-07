<?php
/**
 * Flatsome Conditional Functions
 *
 * @author   UX Themes
 * @package  Flatsome/Functions
 */

/**
 * Returns true if Nextend Facebook Connect plugin is activated
 *
 * @return bool
 */
function is_nextend_facebook_login() {
	return in_array( 'nextend-facebook-connect/nextend-facebook-connect.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) );
}

/**
 * Returns true if Nextend Google Connect plugin is activated
 *
 * @return bool
 */
function is_nextend_google_login() {
	return in_array( 'nextend-google-connect/nextend-google-connect.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) );
}

/**
 * Returns true if WooCommerce plugin is activated
 *
 * @return bool
 */
function is_woocommerce_activated() {
	return class_exists( 'woocommerce' );
}

/**
 * Returns "1" if Flatsome Portfolio option is enabled
 *
 * @return string
 */
function is_portfolio_activated() {
	return get_theme_mod( 'fl_portfolio', 1 );
}

/**
 * Returns true if extension is activated
 *
 * @param $extension
 *
 * @return bool
 */
function is_extension_activated( $extension ) {
	return class_exists( $extension );
}
