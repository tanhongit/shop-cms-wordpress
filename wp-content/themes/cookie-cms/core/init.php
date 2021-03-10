<?php
/*
    @ Thiết lập các hằng dữ liệu quan trọng
    @ THEME_URL = get_stylesheet_directory() - đường dẫn tới thư mục theme
    @ CORE = thư mục /core của theme, chứa các file nguồn quan trọng.
*/
define('THEME_URL', get_stylesheet_directory());
define('CORE', THEME_URL . '/core');
define('GET_TEMP_URL', get_template_directory_uri());
define('GO_TO_HOME', home_url());

require_once get_template_directory() . '/class-tgm-plugin-activation.php';

// Register apply woocommerce template
add_action('after_setup_theme', 'woocommerce_support');
function woocommerce_support()
{
    add_theme_support('woocommerce');
}

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

        /** automatic feed link*/
        add_theme_support('automatic-feed-links');

        /** refresh widgest 
         * Add theme support for selective refresh for widgets
         * **/
        add_theme_support('customize-selective-refresh-widgets');

        /*
        * Thêm chức năng custom background: đổi lại màu nền hoặc thêm ảnh nền cho website
        */
        $default_background = array(
            'default-color' => '#e8e8e8',
        );
        add_theme_support('custom-background', $default_background);

        // Add support for full and wide align images.
        add_theme_support('align-wide');

        // Add support for responsive embeds.
        add_theme_support('responsive-embeds');

        /*
        * Tạo menu cho theme
        */
        register_nav_menu('main-menu', __('Main Menu', 'tnt_team')); //textdomain dùn để dịch

        //widgets slider for banner after header
        register_sidebar(array(
            'name' => 'Hero Area',
            'id' => 'banner-slider-1',
            'description' => 'Hero Area Start - Appears after the header area',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>',
        ));
        register_sidebar(array(
            'name' => 'Banner Four Area',
            'id' => 'area-2',
            'description' => 'Banner Four Area - Appears after the Hero Area',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>',
        ));

        /*
        * Tạo sidebar cho theme
        */
        $sidebar = array(
            'name' => __('Main Sidebar', 'tnt_team'),
            'id' => 'main-sidebar',
            'description' => 'Main sidebar for TNT TEAM theme',
            'class' => 'main-sidebar',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>'
        );
        register_sidebar($sidebar);

        //widgets for footer
        register_sidebar(array(
            'name' => 'Footer Sidebar 1',
            'id' => 'footer-sidebar-1',
            'description' => 'Appears in the footer area',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>',
        ));

        register_sidebar(array(
            'name' => 'Footer Sidebar 2',
            'id' => 'footer-sidebar-2',
            'description' => 'Appears in the footer area',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>',
        ));
        register_sidebar(array(
            'name' => 'Footer Sidebar 3',
            'id' => 'footer-sidebar-3',
            'description' => 'Appears in the footer area',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>',
        ));
        register_sidebar(array(
            'name' => 'Footer Sidebar 4',
            'id' => 'footer-sidebar-4',
            'description' => 'Appears in the footer area',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>',
        ));
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
// function themename_custom_logo_setup()
// {
//     $defaults = array(
//         'height'      => 100,
//         'width'       => 400,
//         'flex-height' => true,
//         'flex-width'  => true,
//         'header-text' => array('site-title', 'site-description'),
//         'unlink-homepage-logo' => true,
//     );
//     add_theme_support('custom-logo', $defaults);
// }

// if (!function_exists('the_custom_logo')) {
//     the_custom_logo();
// }

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
@ sử dụng hook wp_enqueue_scripts() để yêu cầu load hiển thị nó ra ngoài front-end
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

/*
@ Hiện tên người dùng ra giao diện
*/
function show_fullname_curent_user()
{
    if (is_user_logged_in()) {
        $user = wp_get_current_user();
        empty($user->user_firstname) && empty($user->user_lastname) ? $response =  $user->display_name :
            $response = $user->user_firstname . " " .  $user->user_lastname; // or user_login , user_firstname, user_lastname, display_name
    } else {
        $response = ``;
    }
    return $response;
}

/**
 * Kiểm tra và chuyển hướng người dùng theo role.
 */
function my_login_redirect($redirect_to, $request, $user)
{
    global $user;
    if (isset($user->roles) && is_array($user->roles)) {
        //kiểm tra admin
        if (in_array('administrator', $user->roles)) {
            // chuyển đến trang quản trị
            return admin_url();
        } else {
            // chuyển đến trang home
            return home_url();
        }
    } else {
        return $redirect_to;
    }
}
add_filter('login_redirect', 'my_login_redirect', 10, 3);

// --------------------------------------------------------------------------------------------------
/*
@ Woocommerce
*/
/*
@ Thiết lập hàm hiển thị thanh search
*/
function search_product_form($echo = true)
{
    global $product_search_form_index;

    ob_start();

    if (empty($product_search_form_index)) {
        $product_search_form_index = 0;
    }

    do_action('pre_search_product_form');

    wc_get_template(
        'searchform.php',
        array(
            'index' => $product_search_form_index++,
        )
    );
    $form = apply_filters('search_product_form', ob_get_clean());

    if (!$echo) {
        return $form;
    }
    echo $form;
}

/**
 * Show notice if cart is empty.
 */
function the_empty_cart_message()
{
    echo '<p class="cart-empty woocommerce-info">' . wp_kses_post(apply_filters('wc_empty_cart_message', __('Your cart is currently empty.', 'woocommerce'))) . '</p>';
}

//the price for product
//call in loop/price.php
function cms_cookie_get_price($product, $args = array())
{
    $args = apply_filters(
        'wc_price_args',
        wp_parse_args(
            $args,
            array(
                'ex_tax_label'       => false,
                'currency'           => '',
                'decimal_separator'  => wc_get_price_decimal_separator(),
                'thousand_separator' => wc_get_price_thousand_separator(),
                'decimals'           => wc_get_price_decimals(),
                'price_format'       => get_woocommerce_price_format(),
            )
        )
    );

    $price_html = '<div class="pro-price">';
    if ($product->get_price() > 0) {
        if ($product->get_price() != $product->get_regular_price()) {
            $from = $product->get_regular_price();
            $to = $product->get_price();
            $price_html .= '<span class="new-price">' . number_format($to, $args['decimals'], $args['decimal_separator'], $args['thousand_separator']) . get_woocommerce_currency_symbol($args['currency']) . '</span><span class="old-price">' . number_format($from, $args['decimals'], $args['decimal_separator'], $args['thousand_separator']) . get_woocommerce_currency_symbol($args['currency']) . '</span>';
        } else {
            $to = $product->get_price();
            $price_html .= '<span class="new-price">' . number_format($to, $args['decimals'], $args['decimal_separator'], $args['thousand_separator']) . get_woocommerce_currency_symbol($args['currency']) . '</span>';
        }
    } else {
        $price_html .= '<div class="free">Free</div>';
    }
    $price_html .= '</div>';
    return $price_html;
}

/**
 * ------------------------------
 * Hooks woocommerce.
 * ------------------------------
 */
remove_action('woocommerce_before_shop_loop', 'woocommerce_output_all_notices', 10);
add_action('output_all_notices_before_shop_loop', 'woocommerce_output_all_notices', 10);

/**
 * for archive-product.
 */
add_action('woocommerce_shop_loop_item_title_one', 'archive_product_loop_product_title', 10);
function archive_product_loop_product_title()
{
    strlen(get_the_title()) > 27 ?
        $text = '<h2>' . substr(get_the_title(), 0, 27) . '...</h2>' : $text = '<h2>' . get_the_title() . '</h2>';
    echo $text;
}
// Show list product: list
if (!function_exists('woocommerce_product_loop_start')) {

    /**
     * Output the start of a product loop. By default this is a UL.
     *
     * @param bool $echo Should echo?.
     * @return string
     */
    function woocommerce_product_loop_start_list($echo = true)
    {
        ob_start();

        wc_set_loop_prop('loop', 0);

        wc_get_template('loop/loop-start-list.php');

        $loop_start = apply_filters('woocommerce_product_loop_start', ob_get_clean());

        if ($echo) {
            // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
            echo $loop_start;
        } else {
            return $loop_start;
        }
    }
}
function woocommerce_product_loop_end_list()
{
    wc_get_template('loop/loop-end-list.php');
}
// Show short description for "list" archive product
add_action('woocommerce_shop_loop_item_short_desc', 'woocommerce_template_single_excerpt', 5);

/**
 * for product detail.
 */
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_title', 5);
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_price', 10);
//related_products
add_action('output_related_products_for_product_detail', 'woocommerce_output_related_products', 20);

//description
function woocommerce_output_product_description()
{
    wc_get_template('single-product/tabs/description.php');
}

// review single product
add_action('output_review_before_comment_meta', 'woocommerce_review_display_rating', 10);

remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_rating', 10);
add_action('output_rating_products_for_product_detail', 'woocommerce_template_single_rating', 10);

remove_action('woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5);

/**
 * for my account.
 */
function my_account_output_downloads()
{
    wc_get_template('myaccount/downloads.php');
}
function my_account_output_address()
{
    wc_get_template('myaccount/my-address.php');
}
function my_account_output_payment()
{
    wc_get_template('myaccount/payment-methods.php');
}
function my_account_output_edit_account()
{
    wc_get_template('myaccount/form-edit-account.php');
}
function my_account_output_my_orders()
{
    wc_get_template('myaccount/my-orders.php');
}

// // Edit amount related products output.
remove_action('woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20);
// // way 1
// remove_action('woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20);
// add_action('woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20);
// function woocommerce_output_related_products()
// {

//     $args = array(
//         'posts_per_page' => 12,
//         'columns'        => 4,
//         'orderby'        => 'rand', // @codingStandardsIgnoreLine.
//     );

//     woocommerce_related_products(apply_filters('woocommerce_output_related_products_args', $args));
// }

// way 2
function woo_related_products_limit()
{
    global $product;

    $args['posts_per_page'] = 6;
    return $args;
}
add_filter('woocommerce_output_related_products_args', 'cms_related_products_args');
function cms_related_products_args($args)
{

    $args['posts_per_page'] = 16; // 4 related products
    $args['columns'] = 2; // arranged in 2 columns
    return $args;
}


/**
 * TGM Plugin Activation.
 */
add_action('tgmpa_register', 'my_plugin_activation');
function my_plugin_activation()
{
    $plugins = array(
        array(
            'name'      => 'WooCommerce',
            'slug'      => 'woocommerce',
            'required'  => false,
        ),
        array(
            'name'      => 'Google Ads & Marketing by Kliken',
            'slug'      => 'kliken-marketing-for-google',
            'required'  => false,
        ),
        array(
            'name'      => 'Jetpack by WordPress.com',
            'slug'      => 'jetpack',
            'required'  => false,
        ),

        array(
            'name'      => 'WP-Sweep',
            'slug'      => 'wp-sweep',
            'required'  => true,
        ),
        array(
            'name'      => 'All-in-One WP Migration',
            'slug'      => 'all-in-one-wp-migration',
            'required'  => true,
        ),
    ); // end $plugins

    $config = array(
        'default_path' => '',
        'menu'         => 'tgmpa-install-plugins', // Menu slug.
        'has_notices'  => true,                    // Có hiển thị thông báo hay không
        'dismissable'  => true,                    // Nếu đặt false thì người dùng không thể hủy thông báo cho đến khi cài hết plugin.
        'dismiss_msg'  => '',                      // Nếu 'dismissable' là false, thì tin nhắn ở đây sẽ hiển thị trên cùng trang Admin.
        'is_automatic' => false,                   // Nếu là false thì plugin sẽ không tự động kích hoạt khi cài xong.
        'message'      => '',
        'strings'      => array(
            'page_title'                      => __('Install Required Plugins', 'tgmpa'),
            'menu_title'                      => __('Install Plugins', 'tgmpa'),
            'installing'                      => __('Installing Plugin: %s', 'tgmpa'), // %s = plugin name.
            'oops'                            => __('Something went wrong with the plugin API.', 'tgmpa'),
            'notice_can_install_required'     => _n_noop('This theme requires the following plugin: %1$s.', 'This theme requires the following plugins: %1$s.'), // %1$s = plugin name(s).
            'notice_can_install_recommended'  => _n_noop('This theme recommends the following plugin: %1$s.', 'This theme recommends the following plugins: %1$s.'), // %1$s = plugin name(s).
            'notice_cannot_install'           => _n_noop('Sorry, but you do not have the correct permissions to install the %s plugin. Contact the administrator of this site for help on getting the plugin installed.', 'Sorry, but you do not have the correct permissions to install the %s plugins. Contact the administrator of this site for help on getting the plugins installed.'), // %1$s = plugin name(s).
            'notice_can_activate_required'    => _n_noop('The following required plugin is currently inactive: %1$s.', 'The following required plugins are currently inactive: %1$s.'), // %1$s = plugin name(s).
            'notice_can_activate_recommended' => _n_noop('The following recommended plugin is currently inactive: %1$s.', 'The following recommended plugins are currently inactive: %1$s.'), // %1$s = plugin name(s).
            'notice_cannot_activate'          => _n_noop('Sorry, but you do not have the correct permissions to activate the %s plugin. Contact the administrator of this site for help on getting the plugin activated.', 'Sorry, but you do not have the correct permissions to activate the %s plugins. Contact the administrator of this site for help on getting the plugins activated.'), // %1$s = plugin name(s).
            'notice_ask_to_update'            => _n_noop('The following plugin needs to be updated to its latest version to ensure maximum compatibility with this theme: %1$s.', 'The following plugins need to be updated to their latest version to ensure maximum compatibility with this theme: %1$s.'), // %1$s = plugin name(s).
            'notice_cannot_update'            => _n_noop('Sorry, but you do not have the correct permissions to update the %s plugin. Contact the administrator of this site for help on getting the plugin updated.', 'Sorry, but you do not have the correct permissions to update the %s plugins. Contact the administrator of this site for help on getting the plugins updated.'), // %1$s = plugin name(s).
            'install_link'                    => _n_noop('Begin installing plugin', 'Begin installing plugins'),
            'activate_link'                   => _n_noop('Begin activating plugin', 'Begin activating plugins'),
            'return'                          => __('Return to Required Plugins Installer', 'tgmpa'),
            'plugin_activated'                => __('Plugin activated successfully.', 'tgmpa'),
            'complete'                        => __('All plugins installed and activated successfully. %s', 'tgmpa'), // %s = dashboard link.
            'nag_type'                        => 'updated' // Determines admin notice type - can only be 'updated', 'update-nag' or 'error'.
        )
    ); // end $config
    tgmpa($plugins, $config);
}

// -------------------------------------------------------------------------------------------------
//version wordpress hidden
function wpb_remove_version()
{
    return '';
}
add_filter('the_generator', 'wpb_remove_version');

//Footer in Admin WordPress
function remove_footer_admin()
{

    echo 'Fueled by <a href="http://www.wordpress.org" target="_blank">WordPress</a> | Dev Tutorials: <a href="https://tanhongit.com" target="_blank">tanhongit.com</a></p>';
}

add_filter('admin_footer_text', 'remove_footer_admin');

// -------------------------------------------------------------------------------------------------


/** Forms */

if (!function_exists('woocommerce_form_field')) {

    /**
     * Outputs a checkout/address form field.
     *
     * @param string $key Key.
     * @param mixed  $args Arguments.
     * @param string $value (default: null).
     * @return string
     */
    function woocommerce_form_field($key, $args, $value = null)
    {
        $defaults = array(
            'type'              => 'text',
            'label'             => '',
            'description'       => '',
            'placeholder'       => '',
            'maxlength'         => false,
            'required'          => false,
            'autocomplete'      => false,
            'id'                => $key,
            'class'             => array(),
            'label_class'       => array(),
            'input_class'       => array(),
            'return'            => false,
            'options'           => array(),
            'custom_attributes' => array(),
            'validate'          => array(),
            'default'           => '',
            'autofocus'         => '',
            'priority'          => '',
        );

        $args = wp_parse_args($args, $defaults);
        $args = apply_filters('woocommerce_form_field_args', $args, $key, $value);

        if ($args['required']) {
            $args['class'][] = 'validate-required';
            $required        = '&nbsp;<abbr class="required" title="' . esc_attr__('required', 'woocommerce') . '">*</abbr>';
        } else {
            $required = '&nbsp;<span class="optional">(' . esc_html__('optional', 'woocommerce') . ')</span>';
        }

        if (is_string($args['label_class'])) {
            $args['label_class'] = array($args['label_class']);
        }

        if (is_null($value)) {
            $value = $args['default'];
        }

        // Custom attribute handling.
        $custom_attributes         = array();
        $args['custom_attributes'] = array_filter((array) $args['custom_attributes'], 'strlen');

        if ($args['maxlength']) {
            $args['custom_attributes']['maxlength'] = absint($args['maxlength']);
        }

        if (!empty($args['autocomplete'])) {
            $args['custom_attributes']['autocomplete'] = $args['autocomplete'];
        }

        if (true === $args['autofocus']) {
            $args['custom_attributes']['autofocus'] = 'autofocus';
        }

        if ($args['description']) {
            $args['custom_attributes']['aria-describedby'] = $args['id'] . '-description';
        }

        if (!empty($args['custom_attributes']) && is_array($args['custom_attributes'])) {
            foreach ($args['custom_attributes'] as $attribute => $attribute_value) {
                $custom_attributes[] = esc_attr($attribute) . '="' . esc_attr($attribute_value) . '"';
            }
        }

        if (!empty($args['validate'])) {
            foreach ($args['validate'] as $validate) {
                $args['class'][] = 'validate-' . $validate;
            }
        }

        $field           = '';
        $label_id        = $args['id'];
        $sort            = $args['priority'] ? $args['priority'] : '';
        $field_container = '<div class="single-input-item">%3$s</div>';

        switch ($args['type']) {
            case 'country':
                $countries = 'shipping_country' === $key ? WC()->countries->get_shipping_countries() : WC()->countries->get_allowed_countries();

                if (1 === count($countries)) {

                    $field .= '<strong>' . current(array_values($countries)) . '</strong>';

                    $field .= '<input type="hidden" name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" value="' . current(array_keys($countries)) . '" ' . implode(' ', $custom_attributes) . ' class="country_to_state" readonly="readonly" />';
                } else {

                    $field = '<select name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" class="country_to_state country_select ' . esc_attr(implode(' ', $args['input_class'])) . '" ' . implode(' ', $custom_attributes) . ' data-placeholder="' . esc_attr($args['placeholder'] ? $args['placeholder'] : esc_attr__('Select a country / region&hellip;', 'woocommerce')) . '"><option value="">' . esc_html__('Select a country / region&hellip;', 'woocommerce') . '</option>';

                    foreach ($countries as $ckey => $cvalue) {
                        $field .= '<option value="' . esc_attr($ckey) . '" ' . selected($value, $ckey, false) . '>' . esc_html($cvalue) . '</option>';
                    }

                    $field .= '</select>';

                    $field .= '<noscript><button type="submit" name="woocommerce_checkout_update_totals" value="' . esc_attr__('Update country / region', 'woocommerce') . '">' . esc_html__('Update country / region', 'woocommerce') . '</button></noscript>';
                }

                break;
            case 'state':
                /* Get country this state field is representing */
                $for_country = isset($args['country']) ? $args['country'] : WC()->checkout->get_value('billing_state' === $key ? 'billing_country' : 'shipping_country');
                $states      = WC()->countries->get_states($for_country);

                if (is_array($states) && empty($states)) {

                    $field_container = '<p class="form-row %1$s" id="%2$s" style="display: none">%3$s</p>';

                    $field .= '<input type="hidden" class="hidden" name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" value="" ' . implode(' ', $custom_attributes) . ' placeholder="' . esc_attr($args['placeholder']) . '" readonly="readonly" data-input-classes="' . esc_attr(implode(' ', $args['input_class'])) . '"/>';
                } elseif (!is_null($for_country) && is_array($states)) {

                    $field .= '<select name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" class="state_select ' . esc_attr(implode(' ', $args['input_class'])) . '" ' . implode(' ', $custom_attributes) . ' data-placeholder="' . esc_attr($args['placeholder'] ? $args['placeholder'] : esc_html__('Select an option&hellip;', 'woocommerce')) . '"  data-input-classes="' . esc_attr(implode(' ', $args['input_class'])) . '">
						<option value="">' . esc_html__('Select an option&hellip;', 'woocommerce') . '</option>';

                    foreach ($states as $ckey => $cvalue) {
                        $field .= '<option value="' . esc_attr($ckey) . '" ' . selected($value, $ckey, false) . '>' . esc_html($cvalue) . '</option>';
                    }

                    $field .= '</select>';
                } else {

                    $field .= '<input type="text" value="' . esc_attr($value) . '"  placeholder="' . esc_attr($args['placeholder']) . '" name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" ' . implode(' ', $custom_attributes) . ' data-input-classes="' . esc_attr(implode(' ', $args['input_class'])) . '"/>';
                }

                break;
            case 'textarea':
                $field .= '<textarea name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" placeholder="' . esc_attr($args['placeholder']) . '" ' . (empty($args['custom_attributes']['rows']) ? ' rows="2"' : '') . (empty($args['custom_attributes']['cols']) ? ' cols="5"' : '') . implode(' ', $custom_attributes) . '>' . esc_textarea($value) . '</textarea>';

                break;
            case 'checkbox':
                $field = '<label class="checkbox ' . implode(' ', $args['label_class']) . '" ' . implode(' ', $custom_attributes) . '>
						<input type="' . esc_attr($args['type']) . '" class="input-checkbox ' . esc_attr(implode(' ', $args['input_class'])) . '" name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" value="1" ' . checked($value, 1, false) . ' /> ' . $args['label'] . $required . '</label>';

                break;
            case 'text':
            case 'password':
            case 'datetime':
            case 'datetime-local':
            case 'date':
            case 'month':
            case 'time':
            case 'week':
            case 'number':
            case 'email':
            case 'url':
            case 'tel':
                $field .= '<input type="' . esc_attr($args['type']) . '" name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" placeholder="' . esc_attr($args['placeholder']) . '"  value="' . esc_attr($value) . '" ' . implode(' ', $custom_attributes) . ' />';

                break;
            case 'hidden':
                $field .= '<input type="' . esc_attr($args['type']) . '" class="input-hidden ' . esc_attr(implode(' ', $args['input_class'])) . '" name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" value="' . esc_attr($value) . '" ' . implode(' ', $custom_attributes) . ' />';

                break;
            case 'select':
                $field   = '';
                $options = '';

                if (!empty($args['options'])) {
                    foreach ($args['options'] as $option_key => $option_text) {
                        if ('' === $option_key) {
                            // If we have a blank option, select2 needs a placeholder.
                            if (empty($args['placeholder'])) {
                                $args['placeholder'] = $option_text ? $option_text : __('Choose an option', 'woocommerce');
                            }
                            $custom_attributes[] = 'data-allow_clear="true"';
                        }
                        $options .= '<option value="' . esc_attr($option_key) . '" ' . selected($value, $option_key, false) . '>' . esc_html($option_text) . '</option>';
                    }

                    $field .= '<select name="' . esc_attr($key) . '" id="' . esc_attr($args['id']) . '" class="select ' . esc_attr(implode(' ', $args['input_class'])) . '" ' . implode(' ', $custom_attributes) . ' data-placeholder="' . esc_attr($args['placeholder']) . '">
							' . $options . '
						</select>';
                }

                break;
            case 'radio':
                $label_id .= '_' . current(array_keys($args['options']));

                if (!empty($args['options'])) {
                    foreach ($args['options'] as $option_key => $option_text) {
                        $field .= '<input type="radio" class="input-radio ' . esc_attr(implode(' ', $args['input_class'])) . '" value="' . esc_attr($option_key) . '" name="' . esc_attr($key) . '" ' . implode(' ', $custom_attributes) . ' id="' . esc_attr($args['id']) . '_' . esc_attr($option_key) . '"' . checked($value, $option_key, false) . ' />';
                        $field .= '<label for="' . esc_attr($args['id']) . '_' . esc_attr($option_key) . '" class="radio ' . implode(' ', $args['label_class']) . '">' . esc_html($option_text) . '</label>';
                    }
                }

                break;
        }

        if (!empty($field)) {
            $field_html = '';

            if ($args['label'] && 'checkbox' !== $args['type']) {
                $field_html .= '<label for="' . esc_attr($label_id) . '" class="' . esc_attr(implode(' ', $args['label_class'])) . '">' . wp_kses_post($args['label']) . $required . '</label>';
            }

            $field_html .= $field;

            if ($args['description']) {
                $field_html .= '<span class="description" id="' . esc_attr($args['id']) . '-description" aria-hidden="true">' . wp_kses_post($args['description']);
            }

            $field_html .= '</span>';

            $container_class = esc_attr(implode(' ', $args['class']));
            $container_id    = esc_attr($args['id']) . '_field';
            $field           = sprintf($field_container, $container_class, $container_id, $field_html);
        }

        /**
         * Filter by type.
         */
        $field = apply_filters('woocommerce_form_field_' . $args['type'], $field, $key, $args, $value);

        /**
         * General filter on form fields.
         *
         * @since 3.4.0
         */
        $field = apply_filters('woocommerce_form_field', $field, $key, $args, $value);

        if ($args['return']) {
            return $field;
        } else {
            // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
            echo $field;
        }
    }
}
