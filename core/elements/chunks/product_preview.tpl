<div class="hero-slide-item slider-height swiper-slide d-flex bg-color1"
     data-bg-image="assets/images/slider-image/slider-bg-1.jpg">
    <div class="container align-self-center">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 align-self-center sm-center-view">
                <div class="hero-slide-content slider-animated-1">
                    <h2 class="title-1">{$pagetitle}</h2>
                    <span class="price">
                        {if $old_price}<span class="old"> <del>${$old_price | number: '0':'.':' '}</del></span>{/if}
                        <span class="new">${$price | number: '0':'.':' '}</span>
                    </span>
                    <a href="{$uri}" class="btn btn-primary m-auto text-uppercase">View Details</a>
                </div>
            </div>
            <div
                    class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-flex justify-content-center position-relative">
                <div class="show-case">
                    <div class="hero-slide-image">
                        <img src="{$image | pthumb: 'w=400&h=400&zc=1&f=webp'}" alt="{$pagetitle}" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
