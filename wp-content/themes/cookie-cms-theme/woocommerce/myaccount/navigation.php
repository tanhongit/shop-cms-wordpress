<?php

/**
 * My Account navigation
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/navigation.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 2.6.0
 */

if (!defined('ABSPATH')) {
	exit;
}

do_action('woocommerce_before_account_navigation');
?>



<div class="myaccount-tab-menu nav" role="tablist">
	<a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
		Dashboard</a>
	<a href="#orders" data-toggle="tab" class=""><i class="fa fa-cart-arrow-down"></i> Orders</a>
	<a href="#download" data-toggle="tab" class=""><i class="fa fa-cloud-download"></i> Download</a>
	<a href="#payment-method" data-toggle="tab" class=""><i class="fa fa-credit-card"></i> Payment
		Method</a>
	<a href="#address-edit" data-toggle="tab" class=""><i class="fa fa-map-marker"></i> address</a>
	<a href="#account-info" data-toggle="tab" class=""><i class="fa fa-user"></i> Account Details</a>
	<a href="<?=GO_TO_HOME?>/wp-login.php?action=logout"><i class="fa fa-sign-out"></i> Logout</a>
</div>

<?php do_action('woocommerce_after_account_navigation'); ?>

