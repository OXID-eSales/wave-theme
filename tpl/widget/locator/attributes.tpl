[{block name="widget_locator_attributes"}]
    [{if $attributes}]
        <div class="filter-attributes">
            <form method="get" action="[{$oViewConf->getSelfActionLink()}]" name="_filterlist" id="filterList" class="filter-form">
                <div class="hidden">
                    [{$oViewConf->getHiddenSid()}]
                    [{$oViewConf->getNavFormParams()}]
                    <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
                    <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
                    <input type="hidden" name="oxloadid" value="[{$oViewConf->getActContentLoadId()}]">
                    <input type="hidden" name="fnc" value="executefilter">
                    <input type="hidden" name="fname" value="">
                </div>

                <div class="list-filter">
                    [{foreach from=$attributes item=oFilterAttr key=sAttrID name=attr}]
                        [{assign var="sActiveValue" value=$oFilterAttr->getActiveValue()}]
                        <div class="btn-group">
                            <button type="button" class="btn btn-outline-dark btn-sm dropdown-toggle" data-toggle="dropdown">
                                <strong>[{$oFilterAttr->getTitle()}]:</strong>
                                [{if $sActiveValue}]
                                    [{$sActiveValue}]
                                [{else}]
                                    [{oxmultilang ident="PLEASE_CHOOSE"}]
                                [{/if}]
                                <span class="caret"></span>
                            </button>
                            <input type="hidden" name="attrfilter[[{$sAttrID}]]" value="[{$sActiveValue}]">
                            <ul class="dropdown-menu" role="menu">
                                [{if $sActiveValue}]
                                    <li><a data-selection-id="" href="#">[{oxmultilang ident="PLEASE_CHOOSE"}]</a></li>
                                [{/if}]
                                [{foreach from=$oFilterAttr->getValues() item=sValue}]
                                    <li class="filter-item">
                                        <a data-selection-id="[{$sValue}]" href="#" class="filter-link[{if $sActiveValue == $sValue}] selected[{/if}]" >[{$sValue}]</a>
                                    </li>
                                [{/foreach}]
                            </ul>
                        </div>
                    [{/foreach}]
                </div>
            </form>
        </div>
    [{/if}]
[{/block}]