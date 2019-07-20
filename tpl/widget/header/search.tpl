[{block name="widget_header_search_form"}]
    [{if $oView->showSearch()}]
        <form class="form search" id="searchForm" role="form" action="[{$oViewConf->getSelfActionLink()}]" method="get" name="search">
            [{$oViewConf->getHiddenSid()}]
            <input type="hidden" name="cl" value="search">

            [{block name="dd_widget_header_search_form_inner"}]
                <div class="input-group">
                    [{block name="header_search_field"}]
                        <input class="form-control" type="text" id="searchParam" name="searchparam" value="[{$oView->getSearchParamForHtml()}]" placeholder="[{oxmultilang ident="SEARCH"}]">
                    [{/block}]

                    [{block name="dd_header_search_button"}]
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button" id="searchSubmit" title="[{oxmultilang ident="SEARCH_SUBMIT"}]"><i class="fas fa-search"></i></button>
                    </div>
                    [{/block}]
                </div>
            [{/block}]
        </form>
    [{/if}]
[{/block}]