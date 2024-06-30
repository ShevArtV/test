{extends 'file:templates/wrapper.tpl'}
{block 'content'}
    <!-- Product Details Area Start -->
    <div class="product-details-area pt-100px pb-100px">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-12 col-xs-12 mb-lm-30px mb-md-30px mb-sm-30px">
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img class="img-responsive m-auto" src="{$_modx->resource.image | pthumb: 'w=576&h=576&zc=1&f=webp'}"
                                     alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 col-xs-12" data-aos="fade-up" data-aos-delay="200">
                    <div data-msac-cart="product" class="product-details-content quickview-content ml-25px">
                        <h2>{$_modx->resource.pagetitle}</h2>
                        <div class="pricing-meta">
                            <ul class="d-flex">
                                <li class="new-price">$
                                    <span>{$_modx->resource.price}</span>
                                </li>
                                <li class="old-price {$_modx->resource.old_price ? '' : 'd-none'}">
                                    <del>$
                                        <span>{$_modx->resource.old_price}</span>
                                    </del>
                                </li>
                            </ul>
                        </div>


                        <p class="mt-30px mb-0">{$_modx->resource.content}</p>
                        <form class="pro-details-quality" data-si-preset="cart_add" data-si-form="product-{$id}" data-si-nosave>
                            <input type="hidden" name="id" value="{$_modx->resource.id}"/>
                            <input type="hidden" name="options[main]" value="{$_modx->resource.id}"/>
                            <input type="hidden" name="options[parent]" value="{$_modx->resource.parent}"/>
                            <div class="cart-plus-minus ms-input-number-wrap">
                                <button class="dec qtybutton ms-input-number-btn ms-input-number-minus" type="button">&#8722;</button>
                                <input class="cart-plus-minus-box ms-input-number-emulator" min="1" value="1" name="count" data-msac-prop="count" type="text">
                                <button class="inc qtybutton ms-input-number-btn ms-input-number-plus" type="button">&#43;</button>
                            </div>
                            <div class="pro-details-cart">
                                <button class="add-cart" type="button" data-si-event="click"> Add To Cart</button>
                            </div>
                        </form>

                        <div class="payment-img">
                            <a href="#"><img src="assets/images//icons/payment.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="related-product-area" data-si-results="{$_modx->resource.id}">
        {'@FILE snippets/getdiscountproducts.php' | snippet: [
        'parents' => '2,3,4,5,6',
        'wrapperTpl' => '@FILE chunks/discounts/wrapper.tpl'
        ]}
    </div>
{/block}
