<li data-msac-product="{$key}" data-mspd-cart-row="{$key}">
    {set $url = $id | url}
    <a href="{$url}" class="image">
        {if $thumb?}
            <img src="{$thumb}" alt="{$pagetitle}" title="{$pagetitle}"/>
        {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                 alt="{$pagetitle}" title="{$pagetitle}"/>
        {/if}
    <div class="content">
        <a href="{$url}" class="title">{$pagetitle}</a>
        <span class="quantity-price">
            <span data-msac-prop="count">{$count}</span> x <span class="amount">$<span data-msac-prop="price">{$price}</span></span>
        </span>
        <form data-si-form="remove-{$key}" data-si-preset="cart_remove">
            <input type="hidden" name="key" value="{$key}">
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="options[main]" value="{$options.main}">
            <button class="remove" type="button" data-si-event="click">&times;</button>
        </form>
    </div>
</li>
