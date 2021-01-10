<!-- \wp-content\plugins\woocommerce\templates\cart -->
<?php defined('ABSPATH') || exit; ?>
<!-- header -->
<?php get_header(); ?>

<!-- body -->
<!-- Breadcrumb Area Start -->
<?php require_once(dirname(__FILE__) . '/templates/cart/breadcrumb.php') ?>
<!-- Breadcrumb Area End -->

<!-- Cart Area Start -->
<?php require_once(dirname(__FILE__) . '/templates/cart/cart.php') ?>
<!-- Cart Area End -->

<!-- footer -->
<?php get_footer(); ?>