[{if $oView->loadCurrency()}]
    [{assign var="currency" value=$oView->getActCurrency()}]
    <div class="btn-group currencies-menu">
        <button type="button" aria-label="Currencys" class="btn dropdown-toggle" data-toggle="dropdown">
            [{block name="dd_layout_page_header_icon_menu_currencies_button"}]
                [{$currency->name}] <i class="fa fa-angle-down"></i>
            [{/block}]
        </button>
        <ul class="dropdown-menu dropdown-menu-right" role="menu">
            [{block name="dd_layout_page_header_icon_menu_currencies_list"}]
                [{foreach from=$oxcmp_cur item=_cur}]
                    [{if $_cur->selected}]
                        [{assign var="selectedCurrency" value=$_cur->name}]
                        [{capture name="currencySelected"}]
                            <a class="dropdown-link" href="[{$_cur->link|oxaddparams:$oView->getDynUrlParams()}]" title="[{$_cur->name}]"><span>[{$_cur->name}]</span></a>
                        [{/capture}]
                    [{/if}]
                    <li class="dropdown-item[{if $_cur->selected}] active[{/if}]">
                        <a class="dropdown-link" href="[{$_cur->link|oxaddparams:$oView->getDynUrlParams()}]" title="[{$_cur->name}]">[{$_cur->name}]</a>
                    </li>
                [{/foreach}]
            [{/block}]
        </ul>
    </div>
[{/if}]