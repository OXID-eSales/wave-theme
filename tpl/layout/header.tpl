[{if $oViewConf->getTopActionClassName() != 'clearcookies' && $oViewConf->getTopActionClassName() != 'mallstart'}]
    [{oxid_include_widget cl="oxwCookieNote" _parent=$oView->getClassName() nocookie=1}]
[{/if}]
[{block name="header_main"}]
    [{assign var="blFullwidth" value=$oViewConf->getViewThemeParam('blFullwidthLayout')}]
    <header id="header" class="header">
        <div class="meta-header">
            <div class="container">
                <div class="hotline">
                    Telefon-Hotline <a href="call:+49224490003">0 22 44 - 9 00 03</a>
                </div>
                [{block name="layout_header_top"}]
                <div class="menu-dropdowns float-right">
                    [{block name="dd_layout_page_header_icon_menu_languages"}]
                    [{* Language Dropdown*}]
                    [{oxid_include_widget cl="oxwLanguageList" lang=$oViewConf->getActLanguageId() _parent=$oView->getClassName() nocookie=1 _navurlparams=$oViewConf->getNavUrlParams() anid=$oViewConf->getActArticleId()}]
                    [{/block}]
                    [{block name="dd_layout_page_header_icon_menu_currencies"}]
                    [{* Currency Dropdown*}]
                    [{oxid_include_widget cl="oxwCurrencyList" cur=$oViewConf->getActCurrency() _parent=$oView->getClassName() nocookie=1 _navurlparams=$oViewConf->getNavUrlParams() anid=$oViewConf->getActArticleId()}]
                    [{/block}]

                    [{block name="dd_layout_page_header_icon_menu_account"}]
                    [{if $oxcmp_user || $oView->getCompareItemCount() || $Errors.loginBoxErrors}]
                    [{assign var="blAnon" value=0}]
                    [{assign var="force_sid" value=$oViewConf->getSessionId()}]
                    [{else}]
                    [{assign var="blAnon" value=1}]
                    [{/if}]
                    [{* Account Dropdown *}]
                    [{oxid_include_widget cl="oxwServiceMenu" _parent=$oView->getClassName() force_sid=$force_sid nocookie=$blAnon _navurlparams=$oViewConf->getNavUrlParams() anid=$oViewConf->getActArticleId()}]
                    [{/block}]

                    [{block name="dd_layout_page_header_icon_menu_minibasket"}]
                    [{* Minibasket Dropdown *}]
                    [{if $oxcmp_basket->getProductsCount()}]
                    [{assign var="blAnon" value=0}]
                    [{assign var="force_sid" value=$oViewConf->getSessionId()}]
                    [{else}]
                    [{assign var="blAnon" value=1}]
                    [{/if}]
                    [{oxid_include_widget cl="oxwMiniBasket" nocookie=$blAnon force_sid=$force_sid}]
                    [{/block}]
                </div>
                [{/block}]
            </div>
        </div>
        <div class="header-box">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-4 col-lg-3 logo-col">
                        [{block name="layout_header_logo"}]
                            [{assign var="slogoImg" value=$oViewConf->getViewThemeParam('sLogoFile')}]
                            [{assign var="sLogoWidth" value=$oViewConf->getViewThemeParam('sLogoWidth')}]
                            [{assign var="sLogoHeight" value=$oViewConf->getViewThemeParam('sLogoHeight')}]
                            <a href="[{$oViewConf->getHomeLink()}]" title="[{$oxcmp_shop->oxshops__oxtitleprefix->value}]" class="logo-link">
                                <img src="[{$oViewConf->getImageUrl($slogoImg)}]" alt="[{$oxcmp_shop->oxshops__oxtitleprefix->value}]" class="logo-img">
                            </a>
                        [{/block}]
                    </div>
                    <div class="col-12 col-md-8 col-lg-9 menus-col">
                        [{block name="layout_header_bottom"}]
                        [{oxid_include_widget cl="oxwCategoryTree" cnid=$oView->getCategoryId() sWidgetType="header" _parent=$oView->getClassName() nocookie=1}]
                        [{/block}]
                    </div>
                </div>
            </div>
        </div>


    </header>

    <div class="hidden-search hidden">
        [{include file="widget/header/search.tpl"}]
    </div>
[{/block}]

[{insert name="oxid_newbasketitem" tpl="widget/minibasket/newbasketitemmsg.tpl" type="message"}]
[{oxid_include_dynamic file="widget/minibasket/minibasketmodal.tpl"}]