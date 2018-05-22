<div class="refineParams row clear[{if $place == "bottom"}] bottomParams[{/if}]">
    <div class="col-12 pagination-options">
        [{if $locator}]
            [{if $place != "bottom"}]
                <div class="float-left">
            [{/if}]
                [{include file="widget/locator/paging.tpl" pages=$locator place=$place}]
            [{if $place != "bottom"}]
                </div>
            [{/if}]
        [{/if}]

        [{if $listDisplayType || $sort || $itemsPerPage}]
            <div class="float-right options">
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
        <div class="clearfix"></div>
    </div>
</div>

[{if $place != "bottom"}]
    [{include file="widget/locator/attributes.tpl"}]
[{/if}]