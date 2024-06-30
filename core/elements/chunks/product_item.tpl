<form class="product" data-si-preset="cart_add" data-si-form="product-{$id}" data-si-nosave>
    <input type="hidden" name="id" value="{$id}">
    <input type="hidden" name="count" value="1">
    <input type="hidden" name="options[main]" value="{$main?:$_modx->resource.id}">
    <input type="hidden" name="options[parent]" value="{$parent}">
    <div class="thumb">
        <a href="{$uri}" class="image">
            <img src="{$image | pthumb: 'w=250&h=250&zc=1&f=webp'}" alt="Product"/>
            <img class="hover-image" src="{$image | pthumb: 'w=280&h=280&zc=1&f=webp'}" alt="{$pagetitle}"/>
        </a>
        <span class="badges">
            <span class="sale {$hide? 'd-none' : ''}">{$discount}%</span>
        </span>
    </div>
    <div class="content">
        <h5 class="title">
            <a href="{$uri}">{$pagetitle}</a>
        </h5>
        <span class="price d-flex flex-column gap-2">
            <span class="new">${$price | number: '2': '.': ' '}</span>
            {if $old_price > 0}
                <del>$
                    <span>{$old_price | number: '2': '.': ' '}</span>
                </del>
            {/if}
        </span>

    </div>
    <button type="button" data-si-event="click" title="Add To Cart" class=" add-to-cart">Add To Cart</button>
</form>
