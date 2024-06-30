<div data-msac-totals class="{!$rows ? 'd-none':''}">
    <div class="head">
        <span class="title">Cart</span>
        <button class="offcanvas-close">×</button>
    </div>

    <div class="body customScroll">
        <ul data-msac-rows class="minicart-product-list">
            {$rows}
        </ul>
    </div>
    <div class="foot">
        <div class="buttons mt-30px">
            <a href="{179|url}" class="btn btn-dark btn-hover-primary mb-30px">view cart</a>
            <a href="{180|url}" class="btn btn-outline-dark current-btn">checkout</a>
        </div>
    </div>
</div>


<div class="alert alert-warning {$rows ? 'd-none':''}" data-msac-empty>
    {'ms2_cart_is_empty' | lexicon}
</div>
