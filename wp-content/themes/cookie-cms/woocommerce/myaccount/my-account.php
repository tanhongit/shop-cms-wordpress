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
								<div class="tab-pane fade" id="orders" role="tabpanel">
									<div class="myaccount-content">
										<h3>Orders</h3>
										<div class="myaccount-table table-responsive text-center">
											<table class="table table-bordered">
												<thead class="thead-light">
													<tr>
														<th>Order</th>
														<th>Date</th>
														<th>Status</th>
														<th>Total</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Aug 22, 2018</td>
														<td>Pending</td>
														<td>$3000</td>
														<td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
													</tr>
													<tr>
														<td>2</td>
														<td>July 22, 2018</td>
														<td>Approved</td>
														<td>$200</td>
														<td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
													</tr>
													<tr>
														<td>3</td>
														<td>June 12, 2017</td>
														<td>On Hold</td>
														<td>$990</td>
														<td><a href="cart.html" class="check-btn sqr-btn ">View</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
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
								<div class="tab-pane fade" id="account-info" role="tabpanel">
									<div class="myaccount-content">
										<h3>Account Details</h3>
										<div class="account-details-form">
											<form action="#">
												
												<div class="single-input-item">
													<label for="display-name" class="required">Display Name</label>
													<input type="text" id="display-name" />
												</div>
												<div class="single-input-item">
													<label for="email" class="required">Email Addres</label>
													<input type="email" id="email" />
												</div>
												<fieldset>
													<legend>Password change</legend>
													<div class="single-input-item">
														<label for="current-pwd" class="required">Current Password</label>
														<input type="password" id="current-pwd" />
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="single-input-item">
																<label for="new-pwd" class="required">New Password</label>
																<input type="password" id="new-pwd" />
															</div>
														</div>
														<div class="col-lg-6">
															<div class="single-input-item">
																<label for="confirm-pwd" class="required">Confirm Password</label>
																<input type="password" id="confirm-pwd" />
															</div>
														</div>
													</div>
												</fieldset>
												<div class="single-input-item">
													<button class="check-btn sqr-btn ">Save Changes</button>
												</div>
											</form>
										</div>
									</div>
								</div> <!-- Single Tab Content End -->
							</div>
						</div> <!-- My Account Tab Content End -->
					</div>
				</div> <!-- My Account Page End -->
			</div>
		</div>
	</div>
</div>