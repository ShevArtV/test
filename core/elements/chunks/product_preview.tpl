<div class="pp-single-slider">
    <div class="single-popular-product">
        <div class="sp-thumb">
            <img src="{$image | pThumb: 'w=300&h=300&zc=1&f=webp'}" alt="">
        </div>
        <div class="sp-details">
            <h4>{$pagetitle}</h4>
            <div class="product-price clearfix">
                <span class="price">
                    {if $old_price}<del><span><span class="woocommerce-Price-currencySymbol">$</span>{$old_price}</span></del>{/if}
                    <ins><span><span class="woocommerce-Price-currencySymbol">$</span>{$price}</span></ins>
                </span>
            </div>
            <div class="sp-details-hover">
                <a class="sp-cart" href="{$uri}"><i class="twi-cart-plus"></i><span>Detail</span></a>
            </div>
        </div>
    </div>
</div>
