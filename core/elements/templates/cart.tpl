{extends 'file:templates/wrapper.tpl'}
{block 'content'}
    <!-- Cart Area Start -->
    <div class="cart-main-area pt-100px pb-100px">
        <div class="container" data-msac-cart="maincart" data-mspd-cart-wrap>
            {'maincart' | placeholder}
        </div>
    </div>
    <!-- Cart Area End -->
{/block}
