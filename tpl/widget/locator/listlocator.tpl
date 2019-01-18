<div class="refineParams row clear[{if $place == "bottom"}] bottomParams[{/if}]">
    [{if $locator}]
        <div class="col pagination-options">
            [{if $place != "bottom"}]
            <div class="float-left">
            [{/if}]
            [{include file="widget/locator/paging.tpl" pages=$locator place=$place}]
            [{if $place != "bottom"}]
            </div>
            [{/if}]
        </div>
    [{/if}]

    [{if $listDisplayType || $sort || $itemsPerPage}]
    <div class="col text-right options">
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