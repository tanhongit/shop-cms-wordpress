<!-- header -->
<?php get_header(); ?>
<!-- body -->
<!-- Header Area End -->

<!-- Show message if product added to cart-->
<?php do_action('woocommerce_before_cart'); ?>
<!-- Protuct Area Start -->
<?php
if (have_posts()) :
    while (have_posts()) : the_post();
?>
        <?php the_content() ?>
<?php endwhile;
else :
    echo "<p>khong co post nao het</p>";
endif; ?>
<!-- Protuct Area End -->
<!-- footer -->
<?php get_footer(); ?>