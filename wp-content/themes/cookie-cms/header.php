<!DOCTYPE html>
<!--[if IE 8]> <html <?php language_attributes(); ?> class="ie8"> <![endif]-->
<!--[if !IE]> <html <?php language_attributes(); ?>> <![endif]-->

<head>
    <meta charset="<?php bloginfo('charset'); ?>" />
    <link rel="profile" href="http://gmgp.org/xfn/11" />
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
    <link rel="stylesheet" href="<?= get_template_directory_uri() ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= get_template_directory_uri() ?>/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= get_template_directory_uri() ?>/assets/css/ie7.css">
    <link rel="stylesheet" href="<?= get_template_directory_uri() ?>/assets/css/plugins.css">
    <link rel="stylesheet" href="<?= get_template_directory_uri() ?>/assets/css/style.css">
    <script src="<?= get_template_directory_uri() ?>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!--hook này để giúp WordPress hiểu được đây là khu vực thẻ <head>-->
    <?php wp_head(); ?>

</head>

<!--Thêm class tượng trưng cho mỗi trang lên <body> để tùy biến-->

<body <?php body_class(); ?>>

    <div id="container">
        <header id="header" class="header-area header-sticky">
            <?php tnt_logo(); ?>
            <?php tnt_menu('main-menu'); ?>
            <div class="header-container">
                <div class="row">
                    <div class="col-lg-5 display-none-md display-none-xs">
                        <div class="ht-main-menu">
                            <nav>
                                <ul>
                                    <li><a href="shop.html">vegetables <i class="fa fa-angle-down"></i></a>
                                        <ul class="ht-mega-menu">
                                            <li>
                                                <ul>
                                                    <li class="mega-menu-title">Bags</li>
                                                    <li><a href="shop.html">Crochet</a></li>
                                                    <li><a href="shop.html">Sleeveles</a></li>
                                                    <li><a href="shop.html">Stripes</a></li>
                                                    <li><a href="shop.html">Sweaters</a></li>
                                                    <li><a href="shop.html"><img src="assets/img/banner/menu-1.jpg" alt=""></a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <ul>
                                                    <li class="mega-menu-title">Bottoms</li>
                                                    <li><a href="shop.html">Flat sandals</a></li>
                                                    <li><a href="shop.html">Heeled sandals</a></li>
                                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                                    <li><a href="shop.html">Short Sleeve</a></li>
                                                    <li><a href="shop.html"><img src="assets/img/banner/menu-2.jpg" alt=""></a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <ul>
                                                    <li class="mega-menu-title">Shirts</li>
                                                    <li><a href="shop.html">Flat sandals</a></li>
                                                    <li><a href="shop.html">Heeled sandals</a></li>
                                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                                    <li><a href="shop.html">Short Sleeve</a></li>
                                                    <li><a href="shop.html"><img src="assets/img/banner/menu-3.jpg" alt=""></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="shop.html">Shop <i class="fa fa-angle-down"></i></a>
                                        <ul>
                                            <li><a href="shop-full-width.html">shop full Width</a></li>
                                            <li><a href="shop-right-sidebar.html">shop Right Sidebar</a></li>
                                            <li><a href="wishlist.html">Wishlist Page</a></li>
                                            <li><a href="cart.html">cart Page</a></li>
                                            <li><a href="checkout.html">checkout Page</a></li>
                                            <li><a href="product-details.html">Single Shop</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-4">
                        <div class="logo text-center">
                            <a href="index.html"><img src="assets/img/logo/logo.png" alt="NatureCircle"></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-sm-8">
                        <div class="header-content d-flex justify-content-end">
                            <div class="search-wrapper">
                                <a href="#"><span class="icon icon-Search"></span></a>
                                <form action="#" class="search-form">
                                    <input type="text" placeholder="Search entire store here ...">
                                    <button type="button">Search</button>
                                </form>
                            </div>
                            <div class="settings-wrapper">
                                <a href="#"><i class="icon icon-Settings"></i></a>
                                <div class="settings-content">
                                    <h4>My Account <i class="fa fa-angle-down"></i></h4>
                                    <ul>
                                        <li><a href="#" class="modal-view button" data-toggle="modal" data-target="#register_box">Register</a></li>
                                        <li><a href="#" class="modal-view button" data-toggle="modal" data-target="#login_box">login</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cart-wrapper">
                                <a href="#">
                                    <i class="icon icon-FullShoppingCart"></i>
                                    <span>2</span>
                                </a>
                                <div class="cart-item-wrapper">
                                    <div class="single-cart-item">
                                        <div class="cart-img">
                                            <a href="cart.html"><img src="assets/img/cart/1.jpg" alt=""></a>
                                        </div>
                                        <div class="cart-text-btn">
                                            <div class="cart-text">
                                                <h5><a href="cart.html">Fresh Fruit Juice</a></h5>
                                                <span class="cart-qty">×1</span>
                                                <span class="cart-price">$68.00</span>
                                            </div>
                                            <button type="button"><i class="fa fa-close"></i></button>
                                        </div>
                                    </div>
                                    <div class="single-cart-item">
                                        <div class="cart-img">
                                            <a href="cart.html"><img src="assets/img/cart/2.jpg" alt=""></a>
                                        </div>
                                        <div class="cart-text-btn">
                                            <div class="cart-text">
                                                <h5><a href="cart.html">Fresh Vegetables</a></h5>
                                                <span class="cart-qty">×1</span>
                                                <span class="cart-price">$98.00</span>
                                            </div>
                                            <button type="button"><i class="fa fa-close"></i></button>
                                        </div>
                                    </div>
                                    <div class="cart-price-total">
                                        <div class="cart-price-info d-flex justify-content-between">
                                            <span>Sub-Total :</span>
                                            <span>$135.00</span>
                                        </div>
                                        <div class="cart-price-info d-flex justify-content-between">
                                            <span>Eco Tax (-2.00) :</span>
                                            <span>$4.00</span>
                                        </div>
                                        <div class="cart-price-info d-flex justify-content-between">
                                            <span>VAT (20%) :</span>
                                            <span>$27.00</span>
                                        </div>
                                        <div class="cart-price-info d-flex justify-content-between">
                                            <span>Total :</span>
                                            <span>$166.00</span>
                                        </div>
                                    </div>
                                    <div class="cart-links">
                                        <a href="cart.html">View cart</a>
                                        <a href="checkout.html">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Start of Login Form-->
            <div class="modal fade" id="login_box" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-close"></i></span></button>
                        </div>
                        <div class="modal-body">
                            <div class="form-pop-up-content">
                                <h2>Login to your account</h2>
                                <form action="#" method="post">
                                    <div class="form-box">
                                        <input type="text" placeholder="User Name" name="username">
                                        <input type="password" placeholder="Password" name="pass">
                                    </div>
                                    <div class="checkobx-link">
                                        <div class="left-col">
                                            <input type="checkbox" id="remember_me"><label for="remember_me">Remember Me</label>
                                        </div>
                                        <div class="right-col"><a href="#">Forget Password?</a></div>
                                    </div>
                                    <button type="submit">Sign In</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End of Login Form-->
            <!--Start of Register Form-->
            <div class="modal fade" id="register_box" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-close"></i></span></button>
                        </div>
                        <div class="modal-body">
                            <div class="form-pop-up-content">
                                <h2>Sign Up</h2>
                                <form action="#" method="post">
                                    <div class="form-box">
                                        <input type="text" placeholder="Full Name" name="fullname">
                                        <input type="text" placeholder="User Name" name="username">
                                        <input type="email" placeholder="Email" name="email">
                                        <input type="password" placeholder="Password" name="pass">
                                        <input type="password" placeholder="Confirm Password" name="re_pass">
                                    </div>
                                    <div class="checkobx-link">
                                        <div class="left-col">
                                            <input type="checkbox" id="remember_reg"><label for="remember_reg">Remember Me</label>
                                        </div>
                                    </div>
                                    <button class="text-uppercase" type="submit">Register</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End of Register Form-->
        </header>