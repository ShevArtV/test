{extends 'file:templates/wrapper.tpl'}
{block 'content'}

    <!-- Shop Section Start -->
    <section class="single-product-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-12">
                    <div class="carousel slide product-slider" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="ps-img">
                                    <img src="{$_modx->resource.image | pthumb: 'w=500&h=500&zc=1&f=webp'}" alt="{$_modx->resource.pagetitle}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-12">
                    <div class="sin-product-details">
                        <h3>{$_modx->resource.pagetitle}</h3>

                        <div class="product-price clearfix">
                            <span class="price">
                                <span><span class="woocommerce-Price-currencySymbol">$</span>{$_modx->resource.price}</span>
                            </span>
                        </div>
                        <div class="pro-excerp">
                            {$_modx->resource.content}
                        </div>

                        <div class="product-cart-qty">
                            <div class="quantityd clearfix">
                                <button class="qtyBtn btnMinus"><span>-</span></button>
                                <input name="qty" value="1" title="Qty" class="input-text qty text carqty" type="text">
                                <button class="qtyBtn btnPlus">+</button>
                            </div>
                            <a href="#" class="add-to-cart-btn">Add To Cart</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row"><div class="col-lg-12"><div class="divider"></div></div></div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="related-product-area">
                        <h3>Related Products</h3>
                        <div class="related-slider owl-carousel">
                            <div class="single-shop-product">
                                <div class="sp-thumb">
                                    <img src="assets/images/shop/5.jpg" alt="" class="">
                                    <div class="pro-badge">
                                        <p class="sale">Sale</p>
                                    </div>
                                </div>
                                <div class="sp-details">
                                    <h4>VRBOX Gaming</h4>
                                    <div class="product-price clearfix">
                                        <span class="price">
                                            <del><span><span class="woocommerce-Price-currencySymbol">$</span>42.00</span></del>
                                            <ins><span><span class="woocommerce-Price-currencySymbol">$</span>38.00</span></ins>
                                        </span>
                                    </div>
                                    <div class="sp-details-hover">
                                        <a class="sp-cart" href="#"><i class="twi-cart-plus"></i><span>Add to cart</span></a>
                                        <a class="sp-wishlist" href="#"><i class="twi-heart2"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="single-shop-product">
                                <div class="sp-thumb">
                                    <img src="assets/images/shop/1.jpg" alt="" class="">
                                    <div class="pro-badge">
                                        <p class="hot">Hot</p>
                                    </div>
                                </div>
                                <div class="sp-details">
                                    <h4>Gaming Mouse</h4>
                                    <div class="product-price clearfix">
                                        <span class="price">
                                            <del><span><span class="woocommerce-Price-currencySymbol">$</span>42.00</span></del>
                                            <ins><span><span class="woocommerce-Price-currencySymbol">$</span>38.00</span></ins>
                                        </span>
                                    </div>
                                    <div class="sp-details-hover">
                                        <a class="sp-cart" href="#"><i class="twi-cart-plus"></i><span>Add to cart</span></a>
                                        <a class="sp-wishlist" href="#"><i class="twi-heart2"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="single-shop-product">
                                <div class="sp-thumb">
                                    <img src="assets/images/shop/8.jpg" alt="" class="">
                                </div>
                                <div class="sp-details">
                                    <h4>Wirless Headset</h4>
                                    <div class="product-price clearfix">
                                        <span class="price">
                                            <span><span class="woocommerce-Price-currencySymbol">$</span>122.00</span>
                                        </span>
                                    </div>
                                    <div class="sp-details-hover">
                                        <a class="sp-cart" href="#"><i class="twi-cart-plus"></i><span>Add to cart</span></a>
                                        <a class="sp-wishlist" href="#"><i class="twi-heart2"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="single-shop-product">
                                <div class="sp-thumb">
                                    <img src="assets/images/shop/5.jpg" alt="" class="">
                                    <div class="pro-badge">
                                        <p class="sale">Sale</p>
                                    </div>
                                </div>
                                <div class="sp-details">
                                    <h4>VRBOX Gaming</h4>
                                    <div class="product-price clearfix">
                                        <span class="price">
                                            <del><span><span class="woocommerce-Price-currencySymbol">$</span>42.00</span></del>
                                            <ins><span><span class="woocommerce-Price-currencySymbol">$</span>38.00</span></ins>
                                        </span>
                                    </div>
                                    <div class="sp-details-hover">
                                        <a class="sp-cart" href="#"><i class="twi-cart-plus"></i><span>Add to cart</span></a>
                                        <a class="sp-wishlist" href="#"><i class="twi-heart2"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="single-shop-product">
                                <div class="sp-thumb">
                                    <img src="assets/images/shop/1.jpg" alt="" class="">
                                    <div class="pro-badge">
                                        <p class="hot">Hot</p>
                                    </div>
                                </div>
                                <div class="sp-details">
                                    <h4>Gaming Mouse</h4>
                                    <div class="product-price clearfix">
                                        <span class="price">
                                            <del><span><span class="woocommerce-Price-currencySymbol">$</span>42.00</span></del>
                                            <ins><span><span class="woocommerce-Price-currencySymbol">$</span>38.00</span></ins>
                                        </span>
                                    </div>
                                    <div class="sp-details-hover">
                                        <a class="sp-cart" href="#"><i class="twi-cart-plus"></i><span>Add to cart</span></a>
                                        <a class="sp-wishlist" href="#"><i class="twi-heart2"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="single-shop-product">
                                <div class="sp-thumb">
                                    <img src="assets/images/shop/8.jpg" alt="" class="">
                                </div>
                                <div class="sp-details">
                                    <h4>Wirless Headset</h4>
                                    <div class="product-price clearfix">
                                        <span class="price">
                                            <span><span class="woocommerce-Price-currencySymbol">$</span>122.00</span>
                                        </span>
                                    </div>
                                    <div class="sp-details-hover">
                                        <a class="sp-cart" href="#"><i class="twi-cart-plus"></i><span>Add to cart</span></a>
                                        <a class="sp-wishlist" href="#"><i class="twi-heart2"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->
{/block}
