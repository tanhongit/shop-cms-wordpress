<div class="checkout-area pb-90">
    <div class="container">
        <form action="#">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="checkbox-form">
                        <h3>Billing Details</h3>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="country-select">
                                    <label>Country <span class="required">*</span></label>
                                    <select>
                                        <option value="volvo">Bangladesh</option>
                                        <option value="saab">Algeria</option>
                                        <option value="mercedes">Afghanistan</option>
                                        <option value="audi">Ghana</option>
                                        <option value="audi2">Albania</option>
                                        <option value="audi3">Bahrain</option>
                                        <option value="audi4">Colombia</option>
                                        <option value="audi5">Dominican Republic</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout-form-list">
                                    <label>First Name <span class="required">*</span></label>
                                    <input type="text" placeholder="" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout-form-list">
                                    <label>Last Name <span class="required">*</span></label>
                                    <input type="text" placeholder="" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout-form-list">
                                    <label>Company Name</label>
                                    <input type="text" placeholder="" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout-form-list">
                                    <label>Address <span class="required">*</span></label>
                                    <input type="text" placeholder="Street address" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout-form-list">
                                    <input type="text" placeholder="Apartment, suite, unit etc. (optional)" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout-form-list">
                                    <label>Town / City <span class="required">*</span></label>
                                    <input type="text" placeholder="Town / City" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout-form-list">
                                    <label>State / County <span class="required">*</span></label>
                                    <input type="text" placeholder="" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout-form-list">
                                    <label>Postcode / Zip <span class="required">*</span></label>
                                    <input type="text" placeholder="Postcode / Zip" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout-form-list">
                                    <label>Email Address <span class="required">*</span></label>
                                    <input type="email" placeholder="" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout-form-list">
                                    <label>Phone <span class="required">*</span></label>
                                    <input type="text" placeholder="Postcode / Zip" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout-form-list create-acc">
                                    <input id="cbox" type="checkbox" />
                                    <label for="cbox">Create an account?</label>
                                </div>
                                <div id="cbox_info" class="checkout-form-list create-account">
                                    <p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
                                    <label>Account password <span class="required">*</span></label>
                                    <input type="password" placeholder="password" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="your-order">
                        <h3>Your order</h3>
                        <div class="your-order-table table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-name">Product</th>
                                        <th class="product-total">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="cart_item">
                                        <td class="product-name">
                                            Vestibulum suscipit <strong class="product-quantity"> × 1</strong>
                                        </td>
                                        <td class="product-total">
                                            <span class="amount">$165.00</span>
                                        </td>
                                    </tr>
                                    <tr class="cart_item">
                                        <td class="product-name">
                                            Vestibulum dictum magna <strong class="product-quantity"> × 1</strong>
                                        </td>
                                        <td class="product-total">
                                            <span class="amount">$50.00</span>
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr class="cart-subtotal">
                                        <th>Cart Subtotal</th>
                                        <td><span class="amount">$215.00</span></td>
                                    </tr>
                                    <tr class="shipping">
                                        <th>Shipping</th>
                                        <td>
                                            <ul>
                                                <li>
                                                    <label>
                                                        Flat Rate: <span class="amount">$7.00</span>
                                                    </label>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>Order Total</th>
                                        <td>
                                            <strong><span class="amount">$215.00</span></strong>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="payment-method">
                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="panel">
                                    <div class="panel-heading" id="headingOne">
                                        <a href="#checkout" data-toggle="collapse" data-parent="#accordion">Cheque Payment</a>
                                    </div>
                                    <div id="checkout" class="collapse show">
                                        <div class="panel-body">
                                            <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading" id="headingTwo">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#billing">
                                            PayPal Payment
                                            <img src="assets/img/payment-paypa.png" alt="">
                                        </a>
                                    </div>
                                    <div id="billing" class="collapse">
                                        <div class="panel-body">
                                            <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="order-button-payment">
                                <input class="default-btn" type="submit" value="Place order" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>