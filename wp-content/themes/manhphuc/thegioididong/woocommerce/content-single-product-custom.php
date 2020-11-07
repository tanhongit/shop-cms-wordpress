<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * Override this template by copying it to yourtheme/woocommerce/content-single-product.php
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     3.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>
<div id="product-<?php the_ID(); ?>" <?php post_class(); ?>>
<?php
	/**
	 * woocommerce_before_single_product hook
	 *
	 * @hooked wc_print_notices - 10
	 */
	 do_action( 'woocommerce_before_single_product' );

	 if ( post_password_required() ) {
	 	echo get_the_password_form();
	 	return;
	 }
   echo '<div class="custom-product-page">';

   if(!get_theme_mod('product_custom_layout')){
    echo '<p class="lead shortcode-error">Create a custom product layout by using the UX Builder. You need to select a Block as custom product layout and then open it in the UX Builder from the product page.</p>';

   } else {
     echo do_shortcode('[block id="'.get_theme_mod('product_custom_layout').'"]');
   }

   echo '</div>';

   echo '<style>.custom-product-page .shortcode-error{padding: 15% 10%; text-align:center;} </style>';


	 do_action( 'woocommerce_after_single_product' );

?>
</div>
