<!-- header -->
<?php get_header(); ?>

<!-- body -->
<div class="searchProduct">
    <div class="container">
        <?php if (have_posts()) : while (have_posts()) : the_post() ?>

                <div class="product">
                    <div class="row">
                        <div class="col-4">
                            <div class="product-image">
                                <a href="<?php echo the_permalink(); ?>" title="<?php the_title(); ?>"><span id="anhtest"><?php the_post_thumbnail(); ?></span></a>
                            </div>
                        </div>
                        <div class="col-8">
                            <a href="<?php echo the_permalink(); ?>">
                                <h3><?php the_title(); ?></h3>
                            </a>
                            <div class="location">Ngày đăng: <i><?php the_time('d/m/Y'); ?></i>, Update: <?php the_modified_time('d/m/Y'); ?> Vào lúc: <?php the_modified_time(); ?> </div>
                        </div>
                    </div>
                </div>
            <?php endwhile;
        else : ?>
            <p>Từ khóa bạn tìm không thấy vui lòng thử lại.</p>
        <?php endif; ?>
    </div>
</div>

<!-- footer -->
<?php get_footer(); ?>