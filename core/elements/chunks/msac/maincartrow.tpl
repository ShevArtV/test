<tr data-msac-product="{$key}">
    <td class="product-thumbnail">
        {var $image}
        {if $thumb?}
            <img src="{$thumb}" alt="{$pagetitle}" title="{$pagetitle}"/>
        {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                 alt="{$pagetitle}" title="{$pagetitle}"/>
        {/if}
        {/var}
        {if $id?}
            <a href="{$id | url}">{$image}</a>
        {else}
            {$image}
        {/if}
    </td>
    <td class="product-name">
        {if $id?}
            <a href="{$id | url}">{$pagetitle}</a>
        {else}
            {$name}
        {/if}
    </td>
    <td class="product-price-cart"><span class="amount">$<span data-msac-prop="price">{$price}</span></span></td>
    <td class="product-quantity">
        <form data-si-form="change-count-{$key}" data-si-preset="cart_change" data-si-event="change" data-si-nosave>
            <input type="hidden" name="key" value="{$key}"/>
            <input type="hidden" name="options[main]" value="{$options.main}"/>
            <input type="hidden" name="options[parent]" value="{$options.parent}"/>
            <div class="cart-plus-minus ms-input-number-wrap">
                <button class="dec qtybutton ms-input-number-btn ms-input-number-minus" type="button">&#8722;</button>
                <input class="cart-plus-minus-box ms-input-number-emulator" min="1" value="{$count}" name="count" type="text">
                <button class="inc qtybutton ms-input-number-btn ms-input-number-plus" type="button">&#43;</button>
            </div>
        </form>
    </td>
    <td class="product-subtotal">$<span data-msac-prop="cost">{$cost}</span></td>
    <td class="product-remove">
        <form class="text-md-right" data-si-form="remove-{$key}" data-si-preset="cart_remove">
            <input type="hidden" name="key" value="{$key}">
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="options[main]" value="{$options.main}">
            <button class="btn" type="button" data-si-event="click"><i class="fa fa-times"></i></button>
        </form>
    </td>
</tr>
