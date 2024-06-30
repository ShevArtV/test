<div class="container pb-100px">
    <div class="accordion" id="accordionExample">
        {foreach $items as $item index=$i}
            {if $item['children']}
                <div class="accordion-item">
                    <button class="accordion-button title {$i === 0 ? '': 'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#category-{$item.id}">
                        {$item.name}
                    </button>
                    <div id="category-{$item.id}" class="accordion-collapse collapse {$i === 0 ? 'show': ''}" data-bs-parent="#accordionExample">
                        <div class="accordion-body product-grid">
                            {foreach $item['children'] as $product}
                                {$_modx->parseChunk('@FILE chunks/product_item.tpl', $product)}
                            {/foreach}
                        </div>
                    </div>
                </div>
            {/if}
        {/foreach}
    </div>
</div>
