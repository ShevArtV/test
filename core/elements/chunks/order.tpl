<form class="ms2_form row" id="msOrder" method="post">
    <input type="hidden" name="delivery" value="1">
    <input type="hidden" name="payment" value="1">
    <div class="col-lg-7">
        <div class="billing-info-wrap">
            <h3>Billing Details</h3>
            <div class="row">
                {foreach ['email','receiver'] as $field}
                    <div class="col-lg-6 col-md-6 input-parent">
                        <div class="billing-info mb-4">
                            <label for="{$field}">{('ms2_frontend_' ~ $field) | lexicon}
                                <span class="required-star">*</span>
                            </label>
                            <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                                   name="{$field}" value="{$form[$field]}"
                                   class="{($field in list $errors) ? ' error' : ''}">
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    <div class="col-lg-5 mt-md-30px mt-lm-30px ">
        <div class="your-order-area">
            <h3>Your order</h3>
            <div class="your-order-wrap gray-bg-4">
                <div class="your-order-product-info">
                    <div class="your-order-total">
                        <ul>
                            <li class="order-total">Total</li>
                            <li>$<span id="ms2_order_cost">{$order.cost ?: 0}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="Place-order mt-25">
                <button type="submit" name="ms2_action" value="order/submit" class="btn-hover ms2_link">
                    {'ms2_frontend_order_submit' | lexicon}
                </button>
            </div>
        </div>
    </div>
</form>
