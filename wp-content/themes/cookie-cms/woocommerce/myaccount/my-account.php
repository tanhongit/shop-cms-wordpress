<?php

/**
 * My Account page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/my-account.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.0
 */

defined('ABSPATH') || exit;
?>
<!-- Breadcrumb Area Start -->
<?php require_once(dirname(__FILE__) . '/breadcrumb.php') ?>
<!-- Breadcrumb Area End -->

<div class="my-account-wrapper pt-120 pb-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<!-- My Account Page Start -->
				<div class="myaccount-page-wrapper">
					<!-- My Account Tab Menu Start -->
					<div class="row">
						<div class="col-lg-3 col-md-4">
							<?php
							/**
							 * My Account navigation.
							 *
							 * @since 2.6.0
							 */
							do_action('woocommerce_account_navigation'); ?>
						</div>
						<!-- My Account Tab Menu End -->
						<!-- My Account Tab Content Start -->
						<div class="col-lg-9 col-md-8">
							<div class="tab-content" id="myaccountContent">
								<!-- Single Tab Content Start -->
								<div class="tab-pane fade show active" id="dashboad" role="tabpanel">
									<div class="myaccount-content">
										<h3>Dashboard</h3>
										<?php
										/**
										 * My Account content.
										 *
										 * @since 2.6.0
										 */
										do_action('woocommerce_account_content');
										?>
									</div>
								</div>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<?=my_account_output_my_orders()?>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<?= my_account_output_downloads() ?>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<!-- <div class="tab-pane fade" id="payment-method" role="tabpanel">
										<div class="myaccount-content">
											<h3>Payment Method</h3>
											<p class="saved-message">You Can't Saved Your Payment Method yet.</p>
										</div>
									</div> -->
								<?= my_account_output_payment() ?>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<?= my_account_output_address() ?>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<?=my_account_output_edit_account()?>
								<!-- Single Tab Content End -->
							</div>
						</div> <!-- My Account Tab Content End -->
					</div>
				</div> <!-- My Account Page End -->
			</div>
		</div>
	</div>
</div>