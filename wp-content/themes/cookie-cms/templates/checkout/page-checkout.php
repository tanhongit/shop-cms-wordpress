<!-- \wp-content\plugins\woocommerce\templates\checkout -->
<?php defined('ABSPATH') || exit; ?>
<!-- header -->
<?php get_header(); ?>

<!-- body -->
<!-- Breadcrumb Area Start -->
<?php require_once(dirname(__FILE__) . '/templates/checkout/breadcrumb.php') ?>
<!-- Breadcrumb Area End -->

<!-- coupon-area start -->
<?php require_once(dirname(__FILE__) . '/templates/checkout/coupon.php') ?>
<!-- coupon-area end -->

<!-- checkout-area start -->
<?php require_once(dirname(__FILE__) . '/templates/checkout/checkout.php') ?>
<!-- checkout-area end -->

<!-- footer -->
<?php get_footer(); ?>