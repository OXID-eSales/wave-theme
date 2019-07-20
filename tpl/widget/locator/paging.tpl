[{block name="widget_locator_paging"}]
    [{if $pages->changePage}]
    <ul class="pagination pagination-sm[{if $place eq "bottom"}] lineBox justify-content-center[{/if}]" id="itemsPager[{$place}]">

        <li class="page-item [{if !$pages->previousPage}] disabled[{/if}]">
            [{if $pages->previousPage}]
            <a class="page-link" href="[{$pages->previousPage}]" aria-label="[{oxmultilang ident="PREVIOUS"}]">
                <span aria-hidden="true"><i class="fa fa-angle-left"></i>&nbsp; [{oxmultilang ident="PREVIOUS"}]</span>
                <span class="sr-only">[{oxmultilang ident="PREVIOUS"}]</span>
            </a>
            [{else}]
            <span class="page-link"><i class="fa fa-angle-left"></i>&nbsp; [{oxmultilang ident="PREVIOUS"}]</span>
            [{/if}]
        </li>

        [{assign var="i" value=1}]
        [{foreach key=iPage from=$pages->changePage item=page}]
        [{if $iPage == $i}]
        <li class="page-item [{if $iPage == $pages->actPage}] active[{/if}]">
            <a href="[{$page->url}]" class="page-link">[{$iPage}]</a>
        </li>
        [{assign var="i" value=$i+1}]
        [{elseif $iPage > $i}]
        <li class="page-item disabled">
            <span>...</span>
        </li>
        <li class="page-item [{if $iPage == $pages->actPage}] active[{/if}]">
            <a href="[{$page->url}]" class="page-link">[{$iPage}]</a>
        </li>
        [{assign var="i" value=$iPage+1}]
        [{elseif $iPage < $i}]
        <li class="page-item [{if $iPage == $pages->actPage}] active[{/if}]">
            <a href="[{$page->url}]" class="page-link">[{$iPage}]</a>
        </li>
        <li class="page-item disabled">
            <span>...</span>
        </li>
        [{assign var="i" value=$iPage+1}]
        [{/if}]
        [{/foreach}]

        <li class="page-item [{if !$pages->nextPage}] disabled[{/if}]">
            [{if $pages->nextPage}]
                <a class="page-link" href="[{$pages->nextPage}]" aria-label="[{oxmultilang ident="NEXT"}]">
                    <span aria-hidden="true">[{oxmultilang ident="NEXT"}] &nbsp;<i class="fa fa-angle-right"></i></span>
                    <span class="sr-only">[{oxmultilang ident="NEXT"}]</span>
                </a>
            [{else}]
                <span class="page-link">[{oxmultilang ident="NEXT"}] &nbsp;<i class="fa fa-angle-right"></i></span>
            [{/if}]
        </li>
    </ul>
    [{/if}]
[{/block}]