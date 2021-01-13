<!-- header -->
<?php get_header(); ?>
<!-- body -->
<!-- Header Area End -->

<!-- Hero Area Start -->
<?= dynamic_sidebar('banner-slider-1') ?>
<!-- Hero Area End -->

<!-- Show message if product added to cart-->
<?php do_action('woocommerce_before_cart'); ?>

<!-- Banner Four Area Start -->
<?= dynamic_sidebar('area-2') ?>
<!-- Banner Four Area End -->

<!-- Protuct Area Start -->
<?php
if (have_posts()) :
    while (have_posts()) : the_post();
?>
        <?php the_content() ?>
<?php endwhile;
else :
    echo "<p>No product.</p>";
endif; ?>
<!-- Protuct Area End -->

<!-- footer -->
<?php get_footer(); ?>