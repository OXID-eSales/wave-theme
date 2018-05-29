<div id="detailsMain">
    [{include file="page/details/inc/productmain.tpl"}]
</div>

<div id="detailsRelated" class="details-related">
    <div class="details-related-info[{if !$oView->getSimilarProducts() && !$oView->getCrossSelling() && !$oView->getAccessoires()}] details-related-info-full[{/if}]">
        [{include file="page/details/inc/tabs.tpl"}]
    </div>

    [{include file="page/details/inc/related_products.tpl"}]
</div>
