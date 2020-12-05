<!-- header -->
<?php get_header(); ?>

<!-- body -->
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area bg-12 text-center">
    <div class="container">
        <h1>My Cart</h1>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= GO_TO_HOME ?>">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Cart</li>
            </ul>
        </nav>
    </div>
</div>
<!-- Breadcrumb Area End -->
<!-- Cart Area Start -->
<div class="cart-area table-area pt-110 pb-95">
    <div class="container">
        <div class="table-responsive">
            <table class="table product-table text-center">
                <thead>
                    <tr>
                        <th class="table-remove">remove</th>
                        <th class="table-image">image</th>
                        <th class="table-p-name">product</th>
                        <th class="table-p-price">price</th>
                        <th class="table-p-qty">quantity</th>
                        <th class="table-total">total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="table-remove"><button><i class="fa fa-trash"></i></button></td>
                        <td class="table-image"><a href="product-details.html"><img src="<?= GO_TO_HOME ?>/wp-content/uploads/2020/11/06_de9a3fb951884589a7de023a8f500870_grande-150x150.jpg" alt=""></a></td>
                        <td class="table-p-name"><a href="product-details.html">Test product 1</a></td>
                        <td class="table-p-price">
                            <p>$65.00</p>
                        </td>
                        <td class="table-p-qty"><input value="1" name="cart-qty" type="number"></td>
                        <td class="table-total">
                            <p>$65.00</p>
                        </td>
                    </tr>
                    <tr>
                        <td class="table-remove"><button><i class="fa fa-trash"></i></button></td>
                        <td class="table-image"><a href="product-details.html"><img src="<?= GO_TO_HOME ?>/wp-content/uploads/2020/11/4183c5944997aff7042e20d3ad7f4124-150x150.jpg" alt=""></a></td>
                        <td class="table-p-name"><a href="product-details.html">Test product 2</a></td>
                        <td class="table-p-price">
                            <p>$95.00</p>
                        </td>
                        <td class="table-p-qty"><input value="1" name="cart-qty" type="number"></td>
                        <td class="table-total">
                            <p>$95.00</p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="table-bottom-wrapper">
            <div class="table-coupon d-flex fix justify-content-start">
                <input type="text" placeholder="Coupon code">
                <button type="submit">Apply coupon</button>
            </div>
            <div class="table-update d-flex justify-content-end">
                <button type="button" disabled>Update cart</button>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="table-total-wrapper d-flex justify-content-end pt-60">
            <div class="table-total-content">
                <h2>Cart totals</h2>
                <div class="table-total-amount">
                    <div class="single-total-content d-flex justify-content-between">
                        <span>Subtotal</span>
                        <span class="c-total-price">$160.00</span>
                    </div>
                    <div class="single-total-content d-flex justify-content-between">
                        <span>Shipping</span>
                        <span class="c-total-price"><span>Flat Rate:</span> $5.00</span>
                    </div>
                    <div class="single-total-content d-flex justify-content-end">
                        <a href="#">Calculate shipping</a>
                    </div>
                    <div class="single-total-content d-flex justify-content-between">
                        <span>Total</span>
                        <span class="c-total-price">$165.00</span>
                    </div>
                    <a href="checkout.html">Proceed to checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart Area End -->

<!-- footer -->
<?php get_footer(); ?>