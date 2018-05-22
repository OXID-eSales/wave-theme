[{assign var="listType" value=$oView->getListDisplayType()}]
[{assign var="_additionalParams" value=$oView->getAdditionalParams()}]
[{assign var="_artPerPage" value=$oViewConf->getArtPerPageCount()}]

[{if $oView->canSelectDisplayType()}]
    <div class="btn-group d-none d-md-inline-flex">
        <button type="button" class="btn btn-outline-dark btn-sm dropdown-toggle" data-toggle="dropdown">
            <strong>[{oxmultilang ident="LIST_DISPLAY_TYPE"}]</strong> [{oxmultilang ident=$listType}] <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li class="filter-item[{if $listType eq 'infogrid'}] selected[{/if}]"><a href="[{$oView->getLink()|oxaddparams:"ldtype=infogrid&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="filter-link[{if $listType eq 'infogrid'}] selected[{/if}]">[{oxmultilang ident="infogrid"}]</a></li>
            <li class="filter-item[{if $listType eq 'grid'}] selected[{/if}]"><a href="[{$oView->getLink()|oxaddparams:"ldtype=grid&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="filter-link[{if $listType eq 'grid'}] selected[{/if}]">[{oxmultilang ident="grid"}]</a></li>
            <li class="filter-item[{if $listType eq 'line'}] selected[{/if}]"><a href="[{$oView->getLink()|oxaddparams:"ldtype=line&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="filter-link[{if $listType eq 'line'}] selected[{/if}]">[{oxmultilang ident="line"}]</a></li>
        </ul>
    </div>
[{/if}]