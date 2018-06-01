[{block name="dd_widget_header_categorylist"}]
    [{if $oxcmp_categories}]
        [{assign var="homeSelected" value="false"}]
        [{if $oViewConf->getTopActionClassName() == 'start'}]
            [{assign var="homeSelected" value="true"}]
        [{/if}]
        [{assign var="oxcmp_categories" value=$oxcmp_categories}]
        [{assign var="blFullwidth" value=$oViewConf->getViewThemeParam('blFullwidthLayout')}]

        <nav id="mainnav" class="navbar navbar-expand-lg navbar-light[{if $blFullwidth}] fullviewlayout[{/if}]" role="navigation">


                [{block name="dd_widget_header_categorylist_navbar"}]
                    [{block name="dd_widget_header_categorylist_navbar_header"}]
                        <div class="navbar-header justify-content-start">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-ex1-collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <span class="visible-xs-inline d-lg-none">[{oxmultilang ident="DD_ROLES_BEMAIN_UIROOTHEADER"}]</span>
                        </div>
                    [{/block}]
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul id="navigation" class="navbar-nav nav">
                            [{block name="dd_widget_header_categorylist_navbar_list"}]
                                <li class="nav-item[{if $homeSelected == 'true'}] active[{/if}]">
                                    <a class="nav-link animsition-link" href="[{$oViewConf->getHomeLink()}]">[{oxmultilang ident="HOME"}]</a>
                                </li>

                                [{foreach from=$oxcmp_categories item="ocat" key="catkey" name="root"}]
                                    [{if $ocat->getIsVisible()}]
                                        [{foreach from=$ocat->getContentCats() item="oTopCont" name="MoreTopCms"}]
                                            <li class="nav-item">
                                                <a class="nav-link" href="[{$oTopCont->getLink()}]">[{$oTopCont->oxcontents__oxtitle->value}]</a>
                                            </li>
                                        [{/foreach}]

                                        <li class="nav-item[{if $homeSelected == 'false' && $ocat->expanded}] active[{/if}][{if $ocat->getSubCats()}] dropdown[{/if}]">
                                            <a class="nav-link animsition-link" href="[{$ocat->getLink()}]"[{if $ocat->getSubCats()}] class="dropdown-toggle" data-toggle="dropdown"[{/if}]>
                                                [{$ocat->oxcategories__oxtitle->value}][{if $ocat->getSubCats()}] <i class="fa fa-angle-down"></i>[{/if}]
                                            </a>

                                            [{if $ocat->getSubCats()}]
                                                <ul class="dropdown-menu">
                                                    [{foreach from=$ocat->getSubCats() item="osubcat" key="subcatkey" name="SubCat"}]
                                                        [{if $osubcat->getIsVisible()}]
                                                            [{foreach from=$osubcat->getContentCats() item=ocont name=MoreCms}]
                                                                <li class="dropdown-item">
                                                                    <a class="dropdown-link animsition-link" href="[{$ocont->getLink()}]">[{$ocont->oxcontents__oxtitle->value}]</a>
                                                                </li>
                                                            [{/foreach}]

                                                            [{if $osubcat->getIsVisible()}]
                                                                <li class="dropdown-item[{if $homeSelected == 'false' && $osubcat->expanded}] active[{/if}]">
                                                                    <a class="dropdown-link animsition-link[{if $homeSelected == 'false' && $osubcat->expanded}] current[{/if}]" href="[{$osubcat->getLink()}]">[{$osubcat->oxcategories__oxtitle->value}]</a>
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

                    </div>
                [{/block}]

        </nav>
    [{/if}]
[{/block}]
