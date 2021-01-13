<?php

get_header();
?>
<?php

echo $wrap_before; ?>
<div class="breadcrumb-area bg-12 text-center" style="padding-top:200px;">
	<div class="container">
		<h1><?php if (apply_filters('woocommerce_show_page_title', true)) : ?>
				<h1 class="woocommerce-products-header__title page-title">404 NOT FOUND</h1>
			<?php endif; ?>
		</h1>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?= GO_TO_HOME ?>">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">404</li>
			</ul>
		</nav>
	</div>
</div>
<div id="primary" class="container content-area">
	<div class="newsletter-area">
		<div class="container text-center" style="font-size: 1.5em;">
			<div class="newsletter-container">
				<p><?php _e('Oops! That page can&rsquo;t be found.', 'TNT'); ?></p>
				<p><?php _e('It looks like nothing was found at this location. Maybe try a search?', 'TNT'); ?></p>
				<div class="newsletter-form mc_embed_signup">
					<form action="<?= GO_TO_HOME ?>" method="get" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" role="search" class="validate" novalidate>
						<div id="mc_embed_signup_scroll" class="mc-form">
							<input type="text" value="" name="s" id="mce-EMAIL" placeholder="Search products…." required>
							<input type="hidden" name="post_type" value="product">
							<button id="mc-embedded-subscribe" type="submit" class="default-btn">Search</button>
						</div>
					</form>
				</div>
			</div><br><br><a class="default-btn" href="<?= GO_TO_HOME ?>">Go to home</a>
		</div>
	</div>
</div>
<?php
get_footer();
