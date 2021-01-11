<?php
defined('ABSPATH') || exit;

do_action('woocommerce_before_mini_cart'); ?>


<div class="cart-item-wrapper">
    <?php if (!WC()->cart->is_empty()) : ?>
        <?php
        do_action('woocommerce_before_mini_cart_contents');
        $check_product = 0;
        foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
            $_product   = apply_filters('woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key);
            $product_id = apply_filters('woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key);

            if ($_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters('woocommerce_widget_cart_item_visible', true, $cart_item, $cart_item_key)) {
                $check_product++;
                $product_name      = apply_filters('woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key);
                $thumbnail         = apply_filters('woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key);
                $product_price     = apply_filters('woocommerce_cart_item_price', WC()->cart->get_product_price($_product), $cart_item, $cart_item_key);
                $product_permalink = apply_filters('woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink($cart_item) : '', $cart_item, $cart_item_key);
        ?>
                <div class="single-cart-item">
                    <div class="cart-img">
                        <a class="img_product_cart" href="<?= $product_permalink ?>"><?= $thumbnail ?></a>
                    </div>
                    <div class="cart-text-btn">
                        <div class="cart-text">
                            <h5 style="margin: 0;"><a href="<?= $product_permalink ?>"><?= substr($product_name, 0, 20) . "..."; ?></a></h5>
                            <span class="cart-qty">×<?php echo apply_filters('woocommerce_widget_cart_item_quantity', ' ' . sprintf('%s', $cart_item['quantity']) . ' ', $cart_item, $cart_item_key); ?></span>
                            <span class="cart-price"><?= $product_price ?></span>
                        </div>
                        <button type="button">
                            <?php
                            echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                                'woocommerce_cart_item_remove_link',
                                sprintf(
                                    '<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s"><i class="fa fa-trash"></i></a>',
                                    esc_url(wc_get_cart_remove_url($cart_item_key)),
                                    esc_html__('Remove this item', 'woocommerce'),
                                    esc_attr($product_id),
                                    esc_attr($_product->get_sku())
                                ),
                                $cart_item_key
                            );
                            ?></button>
                    </div>
                </div>
        <?php
            }
        }
        do_action('woocommerce_mini_cart_contents');
        ?>
        <div class="cart-price-total">
            <div class="cart-price-info d-flex justify-content-between">
                <span>Sub-Total :</span>
                <span><?= WC()->cart->get_cart_subtotal() ?></span>
            </div>
            <!-- <div class="cart-price-info d-flex justify-content-between">
                <span>Eco Tax (-2.00) :</span>
                <span>$4.00</span>
            </div>
            <div class="cart-price-info d-flex justify-content-between">
                <span>VAT (20%) :</span>
                <span>$27.00</span>
            </div> -->
            <!-- <div class="cart-price-info d-flex justify-content-between">
                <span>Total :</span>
                <span><?= WC()->cart->get_cart_subtotal() ?></span>
            </div> -->
        </div>
    <?php else : ?>
        <div class="single-cart-item">
            <div class="cart-text-btn">
                <div class="cart-text">
                    <p class="woocommerce-mini-cart__empty-message"><?php esc_html_e('No products in the cart.', 'woocommerce'); ?></p>
                </div>
            </div>
        </div>
    <?php endif; ?>

    <div class="cart-links">
        <a href="<?= GO_TO_HOME ?>/cart">View cart</a>
        <a href="<?= GO_TO_HOME ?>/checkout">Checkout</a>
    </div>
</div>
<style>
    .single-cart-item .cart-img .img_product_cart img {
        max-width: 80px;
        max-height: 80px;
    }
</style>