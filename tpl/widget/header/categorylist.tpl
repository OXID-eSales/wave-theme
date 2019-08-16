[{block name="dd_widget_header_categorylist"}]
    [{if $oxcmp_categories}]
        [{assign var="homeSelected" value="false"}]
        [{if $oViewConf->getTopActionClassName() == 'start'}]
            [{assign var="homeSelected" value="true"}]
        [{/if}]
        [{assign var="oxcmp_categories" value=$oxcmp_categories}]
        [{assign var="blFullwidth" value=$oViewConf->getViewThemeParam('blFullwidthLayout')}]

        <nav id="mainnav" class="navbar navbar-expand-lg navbar-light[{if $blFullwidth}] fullviewlayout[{/if}]" role="navigation">
            <div class="container">
            [{block name="dd_widget_header_categorylist_navbar"}]
                [{block name="dd_widget_header_categorylist_navbar_header"}]
                    <div class="navbar-header justify-content-start">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-main-collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <span class="d-lg-none">[{oxmultilang ident="DD_ROLES_BEMAIN_UIROOTHEADER"}]</span>
                    </div>
                [{/block}]
                <div class="collapse navbar-collapse navbar-main-collapse" id="navbarSupportedContent">
                    <ul id="navigation" class="navbar-nav nav">
                        [{block name="dd_widget_header_categorylist_navbar_list"}]
                            [{if $oViewConf->getViewThemeParam('blHomeLink')}]
                                <li class="nav-item[{if $homeSelected == 'true'}] active[{/if}]">
                                    <a class="nav-link" href="[{$oViewConf->getHomeLink()}]">[{oxmultilang ident="HOME"}]</a>
                                </li>
                            [{/if}]

                            [{foreach from=$oxcmp_categories item="ocat" key="catkey" name="root"}]
                                [{if $ocat->getIsVisible()}]
                                    [{foreach from=$ocat->getContentCats() item="oTopCont" name="MoreTopCms"}]
                                        <li class="nav-item">
                                            <a class="nav-link[{if $oContent->oxcontents__oxloadid->value === $oTopCont->oxcontents__oxloadid->value}] active[{/if}]" href="[{$oTopCont->getLink()}]">[{$oTopCont->oxcontents__oxtitle->value}]</a>
                                        </li>
                                    [{/foreach}]

                                    <li class="nav-item[{if $homeSelected == 'false' && $ocat->expanded}] active[{/if}][{if $ocat->getSubCats()}] dropdown[{/if}]">
                                        <a class="nav-link" href="[{$ocat->getLink()}]"[{if $ocat->getSubCats()}] class="dropdown-toggle" data-toggle="dropdown"[{/if}]>
                                            [{$ocat->oxcategories__oxtitle->value}][{if $ocat->getSubCats()}] <i class="fa fa-angle-down"></i>[{/if}]
                                        </a>

                                        [{if $ocat->getSubCats()}]
                                            <ul class="dropdown-menu">
                                                [{foreach from=$ocat->getSubCats() item="osubcat" key="subcatkey" name="SubCat"}]
                                                    [{if $osubcat->getIsVisible()}]
                                                        [{foreach from=$osubcat->getContentCats() item=ocont name=MoreCms}]
                                                            <li class="dropdown-item[{if $oViewConf->getContentId() == $ocont->getId()}] active[{/if}]">
                                                                <a class="dropdown-link[{if $oViewConf->getContentId() == $ocont->getId()}] current[{/if}]" href="[{$ocont->getLink()}]">[{$ocont->oxcontents__oxtitle->value}]</a>
                                                            </li>
                                                        [{/foreach}]

                                                        [{if $osubcat->getIsVisible()}]
                                                            <li class="dropdown-item[{if $homeSelected == 'false' && $osubcat->expanded}] active[{/if}]">
                                                                <a class="dropdown-link[{if $homeSelected == 'false' && $osubcat->expanded}] current[{/if}]" href="[{$osubcat->getLink()}]">[{$osubcat->oxcategories__oxtitle->value}]</a>
                                                            </li>
                                                        [{/if}]
                                                    [{/if}]
                                                [{/foreach}]
                                            </ul>
                                        [{/if}]
                                    </li>
                                [{/if}]
                            [{/foreach}]
                        [{/block}]
                    </ul>

                    <ul class="fixed-header-actions">

                        [{block name="categorylist_navbar_minibasket"}]
                            [{include file="widget/header/menubasket.tpl"}]
                        [{/block}]

                        <li class="fixed-header-item">
                            <a href="javascript:void(null)" class="search-toggle fixed-header-link" rel="nofollow">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>

                    </ul>

                    [{if $oView->isDemoShop()}]

                        <a href="[{$oViewConf->getBaseDir()}]admin/" class="btn btn-sm btn-danger navbar-btn navbar-right visible-lg">
                            [{oxmultilang ident="DD_DEMO_ADMIN_TOOL"}]
                            <i class="fa fa-external-link" style="font-size: 80%;"></i>
                        </a>

                    [{/if}]

                </div>
            [{/block}]
            </div>
        </nav>
    [{/if}]
[{/block}]
