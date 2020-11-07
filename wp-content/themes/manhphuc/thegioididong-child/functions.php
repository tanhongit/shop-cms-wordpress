<?php
// Add custom Theme Functions here
//Thiết kế bởi Mạnh Phúc

function MANHPHUC_awesome() {
    wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/libs/font-awesome/css/font-awesome.min.css', array(), '4.7.0', 'all' );
}
add_action( 'wp_enqueue_style', 'MANHPHUC_awesome' );

function action_woocommerce_after_shop_loop_item( ) { 
	global $product;
	echo "<a class='a_product_hover' href='" . $product->get_permalink() . "'> <div class='product_hover'>";
	echo "<p class='_name'> " .$product->get_name() . '</p>';
	echo "<p class='_price'> " .$product->get_price(). "đ</p>";
	echo $product->get_short_description() . '</br>';
	echo"</a></div>";
	}; 
add_action( 'woocommerce_after_shop_loop_item', 'action_woocommerce_after_shop_loop_item', 10, 0 );