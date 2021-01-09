<?php
if (!defined('ABSPATH')) {
	exit;
}
?>

<form role="search" method="get" class="search-form" action="<?php echo esc_url(home_url('/')); ?>">
	<input type="text" id="woocommerce-product-search-field-<?php echo isset($index) ? absint($index) : 0; ?>" placeholder="<?php echo esc_attr__('Search products&hellip;', 'woocommerce'); ?>" value="<?php echo get_search_query(); ?>" name="s">
	<button type="submit">Search</button>
	<input type="hidden" name="post_type" value="product" />
</form>