<div data-msac-totals class="{!$rows ? 'd-none':''}">
    <h3 class="cart-page-title">Your cart items</h3>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
            <div>
                <div class="table-content table-responsive cart-table-content">
                    <table>
                        <thead>
                        <tr>
                            <th>Image</th>
                            <th>Product Name</th>
                            <th>Until Price</th>
                            <th>Qty</th>
                            <th>Subtotal</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody data-msac-rows>
                        {$rows}
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="cart-shiping-update-wrapper">
                            <div class="cart-shiping-update">
                                <a href="/">Continue Shopping</a>
                            </div>
                            <div class="cart-clear">
                                <button type="button" data-si-form data-si-preset="cart_clean" data-si-event="click">Clear Shopping Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-12 mt-md-30px">
                    <div class="grand-totall">
                        <div class="title-wrap">
                            <h4 class="cart-bottom-title section-bg-gary-cart">Cart Total</h4>
                        </div>
                        <h5>Total count <span data-msac-prop="total_count">{$total.count}</span></h5>
                        <h5>Total weight  <span data-msac-prop="total_weight">{$total.weight}</span></h5>
                        <h4 class="grand-totall-title">Total cost <span>$<span  data-msac-prop="total_cost">{$total.cost}</span></span></span></h4>
                        <a href="{180|url}">Proceed to Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="alert alert-warning {$rows ? 'd-none':''}" data-msac-empty>
    {'ms2_cart_is_empty' | lexicon}
</div>
