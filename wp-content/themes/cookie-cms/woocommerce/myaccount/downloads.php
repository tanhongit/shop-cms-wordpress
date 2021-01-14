<?php

/**
 * Downloads
 *
 * Shows downloads on the account page.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/downloads.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.2.0
 */

if (!defined('ABSPATH')) {
	exit;
}

$downloads     = WC()->customer->get_downloadable_products();
$has_downloads = (bool) $downloads;
?>




<div class="tab-pane fade" id="download" role="tabpanel">
	<div class="myaccount-content">
		<h3>Downloads</h3>
		<div class="myaccount-table table-responsive text-center">
			<!-- <table class="table table-bordered">
				<thead class="thead-light">
					<tr>
						<th>Product</th>
						<th>Date</th>
						<th>Expire</th>
						<th>Download</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Haven - Free Real Estate PSD Template</td>
						<td>Aug 22, 2018</td>
						<td>Yes</td>
						<td><a href="#" class="check-btn sqr-btn "><i class="fa fa-cloud-download"></i> Download File</a></td>
					</tr>
					<tr>
						<td>HasTech - Profolio Business Template</td>
						<td>Sep 12, 2018</td>
						<td>Never</td>
						<td><a href="#" class="check-btn sqr-btn "><i class="fa fa-cloud-download"></i> Download File</a></td>
					</tr>
				</tbody>
			</table> -->
			<?php do_action('woocommerce_before_account_downloads', $has_downloads); ?>

			<?php if ($has_downloads) : ?>

				<?php do_action('woocommerce_before_available_downloads'); ?>

				<?php do_action('woocommerce_available_downloads', $downloads); ?>

				<?php do_action('woocommerce_after_available_downloads'); ?>

			<?php else : ?>
				<div class="woocommerce-Message woocommerce-Message--info woocommerce-info">
					<a class="woocommerce-Button button" href="<?php echo esc_url(apply_filters('woocommerce_return_to_shop_redirect', wc_get_page_permalink('shop'))); ?>">
						<?php esc_html_e('Browse products', 'woocommerce'); ?>
					</a>
					<?php esc_html_e('No downloads available yet.', 'woocommerce'); ?>
				</div>
			<?php endif; ?>

			<?php do_action('woocommerce_after_account_downloads', $has_downloads); ?>
		</div>
	</div>
</div>