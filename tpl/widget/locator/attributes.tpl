[{block name="widget_locator_attributes"}]
    [{if $attributes}]
        <div class="row filter-attributes">
            <div class="col-12 text-left">
                <div class="list-filter clearfix">
                    <form method="get" action="[{$oViewConf->getSelfActionLink()}]" name="_filterlist" id="filterList" class="float-left">
                        <div class="hidden">
                            [{$oViewConf->getHiddenSid()}]
                            [{$oViewConf->getNavFormParams()}]
                            <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
                            <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
                            <input type="hidden" name="oxloadid" value="[{$oViewConf->getActContentLoadId()}]">
                            <input type="hidden" name="fnc" value="executefilter">
                            <input type="hidden" name="fname" value="">
                        </div>

                        [{if $oView->getClassName() == 'alist'}]
                            <strong>[{oxmultilang ident="DD_LISTLOCATOR_FILTER_ATTRIBUTES" suffix="COLON"}]</strong>
                        [{/if}]
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
                            [{if $sActiveValue}][{assign var="hasActiveValue" value=$sActiveValue}][{/if}]
                        [{/foreach}]
                    </form>

                    [{if $hasActiveValue}]
                        <form method="get" action="[{$oViewConf->getSelfActionLink()}]" name="_resetFilter" id="resetFilter" class="float-left">
                            [{$oViewConf->getHiddenSid()}]
                            [{$oViewConf->getNavFormParams()}]
                            <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
                            <input type="hidden" name="fnc" value="resetFilter">

                            <button type="submit" class="btn btn-outline-dark btn-sm ml-1">[{oxmultilang ident="DD_CATEGORY_RESET_BUTTON"}]</button>
                        </form>
                    [{/if}]
                </div>
            </div>
        </div>
    [{/if}]
[{/block}]