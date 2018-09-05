<div class="refineParams row clear[{if $place == "bottom"}] bottomParams[{/if}]">
    <div class="col-12 pagination-options">
        [{if $locator}]
        [{if $place != "bottom"}]
        [{else}]
        [{include file="widget/locator/paging.tpl" pages=$locator place=$place}]
        [{/if}]
        [{if $place != "bottom" && $search!=true}]
    </div>
    [{/if}]
    [{/if}]

    [{if $listDisplayType || $sort || $itemsPerPage}]
    <div class="col-12 text-right options">
        [{if $listDisplayType}]
        [{include file="widget/locator/listdisplaytype.tpl"}]
        [{/if}]

        [{if $sort}]
        [{include file="widget/locator/sort.tpl"}]
        [{/if}]

        [{if $itemsPerPage}]
        [{include file="widget/locator/itemsperpage.tpl"}]
        [{/if}]
    </div>
    [{/if}]

    [{if $place != "bottom"}]
    <div class="col-12 text-right">
        [{include file="widget/locator/attributes.tpl"}]
    </div>
    [{/if}]


</div>
</div>