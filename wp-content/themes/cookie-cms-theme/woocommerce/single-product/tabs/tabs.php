<?php

/**
 * Single Product tabs
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/tabs/tabs.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.8.0
 */

if (!defined('ABSPATH')) {
	exit;
}

/**
 * Filter tabs and allow third parties to add their own.
 *
 * Each tab is an array containing title, callback and priority.
 *
 * @see woocommerce_default_product_tabs()
 */
$product_tabs = apply_filters('woocommerce_product_tabs', array());

if (!empty($product_tabs)) :
	$number = 1; ?>

	<div class="p-tab-btn">
		<div class="nav" role="tablist">
			<?php foreach ($product_tabs as $key => $product_tab) : ?>
				<a href="#tab<?php echo $number ?>" data-toggle="tab" role="tab" aria-controls="tab<?php echo $number ?>" <?php $number % 2 == 1 ? $html = "aria-selected='true'" : $html = "aria-selected='false'";
																															echo $html; ?>>
					<?php echo wp_kses_post(apply_filters('woocommerce_product_' . $key . '_tab_title', $product_tab['title'], $key)); ?>
				</a>
			<?php $number++;
			endforeach; ?>
		</div>
	</div>

	<div class="p-d-tab tab-content">
		<?php foreach ($product_tabs as $key => $product_tab) : ?>
			<?php if ($key == "description") : ?>
				<div class="tab-pane active show fade woocommerce-Tabs-panel--<?php echo esc_attr($key); ?> panel entry-content wc-tab" id="tab1" role="tabpanel" id="tab-<?php echo esc_attr($key); ?>" role="tabpanel" aria-labelledby="tab-title-<?php echo esc_attr($key); ?>">
					<div class="tab-items">
						<div class="product-desc-text">
							<?php
							if (isset($product_tab['callback'])) {
								call_user_func($product_tab['callback'], $key, $product_tab);
							}
							?>
						</div>
					</div>
				</div>
			<?php elseif ($key == "reviews") : ?>
				<div class="tab-pane fade scroll-area" id="tab2" role="tabpanel">
					<div class="tab-items">
						<?php
						if (isset($product_tab['callback'])) {
							call_user_func($product_tab['callback'], $key, $product_tab);
						}
						?>
					</div>
				</div>
			<?php endif; ?>
		<?php endforeach; ?>
	</div>

	<?php do_action('woocommerce_product_after_tabs'); ?>
<?php endif; ?>