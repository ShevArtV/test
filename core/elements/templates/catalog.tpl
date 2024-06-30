{extends 'file:templates/wrapper.tpl'}
{block 'content'}
    <!-- Hero/Intro Slider Start -->
    <div class="section ">
        <div class="hero-slider swiper-container slider-nav-style-1 slider-dot-style-1">
            <!-- Hero slider Active -->
            <div class="swiper-wrapper">
                {'!msProducts' | snippet: [
                    'parents' => '2,3,4,5,6',
                    'tpl' => '@FILE chunks/product_preview.tpl',
                    'sortby' => 'RAND()',
                    'limit' => 6
                ]}
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Arrows -->
            <div class="swiper-buttons">
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </div>
    <!-- Hero/Intro Slider End -->
    <div class="section">
        <div class="container">
            <div class="product-grid">
                {'!msProducts' | snippet: [
                'parents' => '2,3,4,5,6',
                'tpl' => '@FILE chunks/product_item.tpl',
                'sortby' => 'RAND()',
                'limit' => 6
                ]}
            </div>
        </div>
    </div>
{/block}
