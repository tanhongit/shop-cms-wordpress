<?php

/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 */

defined('ABSPATH') || exit;

global $product;

/**
 * Hook: woocommerce_before_single_product.
 *
 * @hooked woocommerce_output_all_notices - 10
 */
do_action('woocommerce_before_single_product');

if (post_password_required()) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}
$attachment_ids = $product->get_gallery_attachment_ids();
?>
<!-- Product DEtails Area Start -->
<div class="product-detials-area bg-gray pt-110">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5">
				<div class="product-image-slider d-flex flex-column">
					<!--Product Tab Content Start-->
					<div class="tab-content product-large-image-list">
						<div class="tab-pane fade show active" id="product-slide1" role="tabpanel" aria-labelledby="product-slide-tab-1">
							<div class="single-product-img easyzoom img-full">
								<a href="assets/img/product/2.jpg"><img src="assets/img/product/2.jpg" class="img-fluid" alt=""></a>
								<?php do_action('woocommerce_before_single_product_summary'); ?>
							</div>
						</div>
					</div>
					<!--Product Content End-->
					<!--Product Tab Menu Start-->
					<div class="product-small-image-list">
						<div class="nav small-image-slider-single-product-tabstyle-3" role="tablist">
							<div class="single-small-image img-full">
								<a data-toggle="tab" id="product-slide-tab-1" href="#product-slide1"><img src="assets/img/product/2.jpg" class="img-fluid" alt=""></a>
							</div>
						</div>
					</div>
					<!--Product Tab Menu End-->
				</div>
			</div>
			<div class="col-lg-7 col-md-7">
				<div class="product-details-text">
					<h3><?php the_title(); ?></h3>
					<div class="p-rating-review">
						<div class="product-rating">
							<i class="fa fa-star-o color"></i>
							<i class="fa fa-star-o color"></i>
							<i class="fa fa-star-o color"></i>
							<i class="fa fa-star-o"></i>
							<i class="fa fa-star-o"></i>
						</div>
						<a href="#" class="scroll-down">(2 customer reviews)</a>
					</div>
					<?php if (get_post_meta(get_the_ID(), '_sale_price', true) > 0) { ?>
						<h4><?php echo get_post_meta(get_the_ID(), '_sale_price', true); ?>đ<span><?php echo get_post_meta(get_the_ID(), '_regular_price', true); ?>đ</span></h4>
					<?php } else { ?><h4><?php echo get_post_meta(get_the_ID(), '_regular_price', true); ?>đ</h4><?php } ?>
					<?php if (get_post_meta(get_the_ID(), '_stock_status', true) != "outofstock") { ?>
						<h5><i class="fa fa-check"></i><?php echo get_post_meta(get_the_ID(), '_stock_status', true); ?></h5>
					<?php } else { ?>
						<h5><i class="fa fa-close" style="background-color:red;"></i><?php echo get_post_meta(get_the_ID(), '_stock_status', true); ?></h5>
					<?php }
					do_action('woocommerce_single_product_summary'); ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Product DEtails Area End -->
<!-- Product Review Tab Area Start -->
<div class="product-review-tab-area bg-gray pt-90 pb-105">
	<div class="container scroll-area">
		<div class="p-d-tab-container">
			<div class="p-tab-btn">
				<div class="nav" role="tablist">
					<a class="active" href="#tab1" data-toggle="tab" role="tab" aria-selected="true" aria-controls="tab1">Description</a>
					<a href="#tab2" data-toggle="tab" role="tab" aria-selected="false" aria-controls="tab2">Reviews (2)</a>
				</div>
			</div>
			<div class="p-d-tab tab-content">
				<div class="tab-pane active show fade" id="tab1" role="tabpanel">
					<div class="tab-items">
						<div class="product-desc-text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p>
							<p>Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade scroll-area" id="tab2" role="tabpanel">
					<div class="tab-items">
						<div class="p-review-wrapper">
							<h3>2 reviews for Ornare sed consequat</h3>
							<div class="single-review-item">
								<div class="review-logo">
									<img src="assets/img/icon/logo.jpg" alt="">
								</div>
								<div class="p-review-text">
									<div class="rating-number">
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
									</div>
									<span class="p-review-info"><span>admin</span> – March 23, 2018</span>
									<p>Lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi.</p>
								</div>
							</div>
							<div class="single-review-item">
								<div class="review-logo">
									<img src="assets/img/icon/logo.jpg" alt="">
								</div>
								<div class="p-review-text">
									<div class="rating-number">
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
										<i class="fa fa-star color"></i>
										<i class="fa fa-star"></i>
									</div>
									<span class="p-review-info"><span>admin</span> – March 23, 2018</span>
									<p>Lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi.</p>
								</div>
							</div>
						</div>
						<form action="#" method="post" class="rating-form">
							<h5>Add your rating</h5>
							<div class="submit-rating">
								<i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i>
								<i class="fa fa-star-o"></i>
							</div>
							<label for="r-textarea">Your Review</label>
							<textarea name="review" id="r-textarea" cols="30" rows="10"></textarea>
							<label for="r-name">Name *</label>
							<input type="text" placeholder="" id="r-name">
							<label for="r-email">Email *</label>
							<input type="email" placeholder="" id="r-email">
							<button type="button" class="default-btn">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Product Review Tab Area End -->
<!-- Protuct Area Start -->
<div class="product-area bg-gray pb-80 mb-95 related-product">
	<?php
	do_action('output_related_products_for_product_detail');
	?>
</div>
<!-- Protuct Area End -->