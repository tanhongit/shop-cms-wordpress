<!-- header -->
<?php get_header(); ?>
<!-- body -->
<!-- Header Area End -->
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