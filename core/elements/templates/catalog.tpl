{extends 'file:templates/wrapper.tpl'}
{block 'content'}
    <!-- Popular Section Start -->
    <section class="popular-section">

        <!-- Shape Round -->
        <div class="shape-round">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
        <!-- Shape Round -->

        <!-- Section Heading -->
        <div class="sec-heading rotate-rl">Most <span>Popular</span></div>
        <!-- Section Heading -->

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="sec-title">Most Popular</h2>
                    <ul class="product-tab-title nav nav-tabs">
                        <li><a class="active" href="#all" data-toggle="tab">All</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show in active" id="all" role="tabpanel">
                            <div class="popular-tab-slider owl-carousel">
                                {'!msProducts' | snippet: [
                                    'parents' => 0,
                                    'tpl' => '@FILE chunks/product_preview.tpl',
                                    'limit' => 6,
                                    'where' => ['Data.favorite' => 1]
                                ]}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Popular Section End -->
{/block}
