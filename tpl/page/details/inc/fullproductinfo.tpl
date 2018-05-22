<div id="detailsMain">
    [{include file="page/details/inc/productmain.tpl"}]
</div>

<div id="detailsRelated" class="details-related">
    <div class="details-related-info[{if !$oView->getSimilarProducts() && !$oView->getCrossSelling() && !$oView->getAccessoires()}] details-related-info-full[{/if}]">
        [{include file="page/details/inc/tabs.tpl"}]

        [{if $oView->isReviewActive()}]
            <div class="reviews">
                <div class="h2 reviews-header">[{oxmultilang ident="WRITE_PRODUCT_REVIEW"}]</div>
                [{include file="widget/reviews/reviews.tpl"}]
            </div>
        [{/if}]
    </div>

    [{include file="page/details/inc/related_products.tpl"}]
</div>
