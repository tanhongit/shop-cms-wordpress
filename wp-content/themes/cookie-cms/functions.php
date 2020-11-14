<?php
/*
    @ Thiết lập các hằng dữ liệu quan trọng
    @ THEME_URL = get_stylesheet_directory() - đường dẫn tới thư mục theme
    @ CORE = thư mục /core của theme, chứa các file nguồn quan trọng.
*/
define('THEME_URL', get_stylesheet_directory());
define('CORE', THEME_URL . '/core');

require_once(CORE . '/init.php');

// @ Thiết lập $content_width để khai báo kích thước chiều rộng của nội dung
if (!isset($content_width)) {
    /*
     * Nếu biến $content_width chưa có dữ liệu thì gán giá trị cho nó
     */
    $content_width = 620;
}

/*
    @ Thiết lập các chức năng sẽ được theme hỗ trợ
*/
if (!function_exists('tnt_theme_setup')) {
    /*
     * Nếu chưa có hàm tnt_theme_setup() thì sẽ tạo mới hàm đó
     */
    function tnt_theme_setup()
    {
        /*
        * Thiết lập theme có thể dịch được
        */
        $language_folder = THEME_URL . '/languages';
        load_theme_textdomain('tnt_team', $language_folder); // tên nhận diện các chuỗi mà chúng ta sẽ cho phép dịch trong theme

        /*
        * Thêm chức năng post thumbnail
        */
        add_theme_support('post-thumbnails');

        /*
        * thêm chức năng title-tag để tự thêm <title>
        */
        add_theme_support('title-tag');

        /* 
        * thêm chức năng custom logo
        */
        add_theme_support('custom-logo');

        /* 
        * thêm chức năng custom header
        */
        add_theme_support('custom-header');


        /*
        * Thêm chức năng post format: tùy biến việc hiển thị post theo các định dạng
        */
        add_theme_support(
            'post-formats',
            array(
                'image',
                'video',
                'gallery',
                'quote',
                'link'
            )
        );

        /*
        * Thêm chức năng custom background: đổi lại màu nền hoặc thêm ảnh nền cho website
        */
        $default_background = array(
            'default-color' => '#e8e8e8',
        );
        add_theme_support('custom-background', $default_background);

        /*
        * Tạo menu cho theme
        */
        register_nav_menu('main-menu', __('Main Menu', 'tnt_team')); //textdomain dùn để dịch

        /*
        * Tạo sidebar cho theme
        */
        $sidebar = array(
            'name' => __('Main Sidebar', 'tnt_team'),
            'id' => 'main-sidebar',
            'description' => 'Main sidebar for TNT TEAM theme',
            'class' => 'main-sidebar',
            'before_title' => '<h3 class="widgettitle">',
            'after_title' => '</h3>'
        );
        register_sidebar($sidebar);
    }
    add_action('init', 'tnt_theme_setup');
}

// --------------------------------------------------------------------------------------------------
//  Header
// ==================================
/*
@ Thiết lập hàm hiển thị logo
@ tnt_logo()
*/
if (!function_exists('tnt_logo')) {
    function tnt_logo()
    { ?>
        <div class="logo text-center">
            <?php if (is_home()) {
                printf(
                    '<h1><a href="%1$s" title="%2$s">%3$s</a></h1>',
                    get_bloginfo('url'),
                    get_bloginfo('description'),
                    get_bloginfo('sitename')
                );
            } else {
                printf(
                    '<p><a href="%1$s" title="%2$s">%3$s</a></p>',
                    get_bloginfo('url'),
                    get_bloginfo('description'),
                    get_bloginfo('sitename')
                );
            } // endif 
            ?>
            <p class="site-description"><?php bloginfo('description'); ?></p>
        </div>
<?php }
}
// %1$s: get_bloginfo( ‘url’ )
// %2$s: get_bloginfo( ‘description’ )
// %3$s: get_bloginfo( ‘sitename’ )
function themename_custom_logo_setup()
{
    $defaults = array(
        'height'      => 100,
        'width'       => 400,
        'flex-height' => true,
        'flex-width'  => true,
        'header-text' => array('site-title', 'site-description'),
        'unlink-homepage-logo' => true,
    );
    add_theme_support('custom-logo', $defaults);
}

if (!function_exists('the_custom_logo')) {
    the_custom_logo();
}

/*
@ Thiết lập hàm hiển thị menu
@ tnt_menu( $slug )
*/
if (!function_exists('tnt_menu')) {
    function tnt_menu($slug)
    {
        $menu = array(
            'theme_location' => $slug,
            'container' => 'nav',
            'container_class' => $slug,
        );
        wp_nav_menu($menu);
    }
}

/*
@ Chèn CSS và Javascript vào theme
@ sử dụng hook wp_enqueue_scripts() để hiển thị nó ra ngoài front-end
*/
function tnt_styles()
{
    /*
     * Hàm get_stylesheet_uri() sẽ trả về giá trị dẫn đến file style.css của theme
     * Nếu sử dụng child theme, thì file style.css này vẫn load ra từ theme mẹ
     */
    wp_register_style('main-style', get_template_directory_uri() . '/style.css', 'all');
    wp_enqueue_style('main-style');
}
add_action('wp_enqueue_scripts', 'tnt_styles');
