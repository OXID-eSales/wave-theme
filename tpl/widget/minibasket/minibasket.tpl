[{if $oxcmp_basket->getProductsCount() gte 5}]
    [{assign var="blScrollable" value=true}]
[{/if}]

[{capture name="cartTable"}]
    [{foreach from=$oxcmp_basket->getContents() name=miniBasketList item=_product}]
        [{block name="widget_minibasket_product"}]
            [{assign var="minibasketItemTitle" value=$_product->getTitle()}]
            <div class="row minibasket-item-row">
                <div class="[{if $_prefix == 'modal'}]col-4 col-sm-2[{else}]col-4[{/if}] minibasket-item-col text-center">
                    <span class="badge">[{$_product->getAmount()}]</span>
                    <a class="minibasket-link" href="[{$_product->getLink()}]" title="[{$minibasketItemTitle|strip_tags}]">
                        <img class="minibasket-img" src="[{$_product->getIconUrl()}]" alt="[{$minibasketItemTitle|strip_tags}]"/>
                    </a>
                </div>
                <div class="[{if $_prefix == 'modal'}]col-4 col-sm-7[{else}]col-4[{/if}] minibasket-item-col">
                    <a class="minibasket-link" href="[{$_product->getLink()}]" title="[{$minibasketItemTitle|strip_tags}]">[{$minibasketItemTitle|strip_tags}]</a>

                </div>
                <div class="[{if $_prefix == 'modal'}]col-4 col-sm-3[{else}]col-4[{/if}] minibasket-item-col text-right">
                    <span class="price">[{oxprice price=$_product->getPrice() currency=$currency}]</span>
                </div>
            </div>
        [{/block}]
    [{/foreach}]
    <div class="row minibasket-total-row">
        <div class="[{if $_prefix == 'modal'}]col-8 col-sm-9[{else}]col-8[{/if}] minibasket-total-col">
            <strong>[{oxmultilang ident="TOTAL"}]</strong>
        </div>
        <div class="[{if $_prefix == 'modal'}]col-4 col-sm-3[{else}]col-4[{/if}] minibasket-total-col text-right">
            <strong>
                [{if $oxcmp_basket->isPriceViewModeNetto()}]
                    [{oxprice price=$oxcmp_basket->getNettoSum() currency=$currency}]
                [{else}]
                    [{oxprice price=$oxcmp_basket->getBruttoSum() currency=$currency}]
                [{/if}]
            </strong>
        </div>
    </div>
[{/capture}]

[{block name="widget_minibasket"}]
    [{if $oxcmp_basket->getProductsCount()}]
        [{oxhasrights ident="TOBASKET"}]
            [{assign var="currency" value=$oView->getActCurrency()}]

            [{if $_prefix == 'modal'}]
                <div class="modal fade basketFlyout" id="basketModal" tabindex="-1" role="dialog" aria-labelledby="basketModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            [{block name="widget_minibasket_modal_header"}]
                            <div class="modal-header">
                                <h4 class="modal-title" id="basketModalLabel">[{$oxcmp_basket->getItemsCount()}] [{oxmultilang ident="ITEMS_IN_BASKET"}]</h4>
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span>
                                    <span class="sr-only">[{oxmultilang ident="CLOSE"}]</span>
                                </button>
                            </div>
                            [{/block}]
                            [{block name="widget_minibasket_modal_content"}]
                            <div class="modal-body">
                                [{if $oxcmp_basket->getProductsCount()}]
                                    [{oxhasrights ident="TOBASKET"}]
                                        <div id="[{$_prefix}]basketFlyout" class="basketFlyout">
                                            [{$smarty.capture.cartTable}]
                                            [{include file="widget/minibasket/countdown.tpl"}]
                                        </div>
                                    [{/oxhasrights}]
                                [{/if}]
                            </div>
                            [{/block}]
                            [{block name="widget_minibasket_modal_footer"}]
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">[{oxmultilang ident="DD_MINIBASKET_CONTINUE_SHOPPING"}]</button>
                                <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=basket"}]" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="[{oxmultilang ident="DISPLAY_BASKET"}]">
                                    <i class="fa fa-shopping-cart"></i> [{oxmultilang ident="DISPLAY_BASKET"}]
                                </a>
                            </div>
                            [{/block}]
                        </div>
                    </div>
                </div>
                [{oxscript add="$('#basketModal').modal('show');"}]
            [{else}]
                [{block name="dd_layout_page_header_icon_menu_minibasket_title"}]
                    <p class="title">
                        <strong>[{$oxcmp_basket->getItemsCount()}] [{oxmultilang ident="ITEMS_IN_BASKET"}]</strong>
                    </p>
                [{/block}]

                <div id="[{$_prefix}]basketFlyout" class="basketFlyout[{if $blScrollable}] scrollable[{/if}]">
                    [{block name="dd_layout_page_header_icon_menu_minibasket_table"}]

                    <div class="minibasket">
                        [{$smarty.capture.cartTable}]
                    </div>

                        <div class="clearfix">
                            [{block name="widget_minibasket_total"}][{/block}]
                        </div>
                    [{/block}]
                </div>

                [{include file="widget/minibasket/countdown.tpl"}]

                [{block name="dd_layout_page_header_icon_menu_minibasket_functions"}]
                    <p class="functions clear text-right">
                        [{if $oxcmp_user}]
                            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=payment"}]" class="btn btn-primary">[{oxmultilang ident="CHECKOUT"}]</a>
                        [{else}]
                            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=user"}]" class="btn btn-primary">[{oxmultilang ident="CHECKOUT"}]</a>
                        [{/if}]
                        <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=basket"}]" class="btn btn-outline-dark">[{oxmultilang ident="DISPLAY_BASKET"}]</a>
                    </p>
                [{/block}]
            [{/if}]
        [{/oxhasrights}]
    [{else}]
        [{block name="dd_layout_page_header_icon_menu_minibasket_alert_empty"}]
            <div class="alert alert-info">[{oxmultilang ident="BASKET_EMPTY"}]</div>
        [{/block}]
    [{/if}]
[{/block}]