{extends 'file:templates/wrapper.tpl'}
{block 'content'}
    <!-- checkout area start -->
    <div class="checkout-area pt-100px pb-100px">
        <div class="container">
            {'!msOrder' | snippet: ['tpl' => '@FILE chunks/order.tpl']}
            {if $.get.msorder}
                <h3>Спасибо за заказ!</h3>
            {/if}
        </div>
    </div>
    <!-- checkout area end -->
{/block}
