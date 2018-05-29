[{capture append="oxidBlock_pageBody"}]
    [{if $oView->showRDFa()}]
        [{include file="rdfa/rdfa.tpl"}]
    [{/if}]

    <div class="global-header">
        [{block name="layout_header"}]
            [{include file="layout/header.tpl"}]
        [{/block}]

        [{if $oView->getClassName() != "start" && !$blHideBreadcrumb}]
            [{block name="layout_breadcrumb"}]
            [{include file="widget/breadcrumb.tpl"}]
            [{/block}]
        [{/if}]

        [{if $actCategory->oxcategories__oxthumb->value && $actCategory->getThumbUrl()}]
        <div class="global-header-bg">
            <img class="global-header-bg-img" src="([{$actCategory->getThumbUrl()}]">
        </div>
        [{/if}]
    </div>
    [{assign var="blFullwidth" value=$oViewConf->getViewThemeParam('blFullwidthLayout')}]

<div class="[{if $blFullwidth}]container-fluid[{else}]container[{/if}]">

    <div id="wrapper" class="main-row[{if $sidebar}]class="sidebar[{$sidebar}][{/if}]">


        [{if $oView->getClassName()=='start' && $oView->getBanners()|@count > 0}]
        <div class="row">
            [{include file="widget/promoslider.tpl"}]
        </div>
        [{/if}]

        <div class="content-box">
            [{$smarty.capture.loginErrors}]
            <div class="[{if $blFullwidth}]container[{else}]container-fluid[{/if}]">

                <div class="row">

                    [{if $sidebar && $sidebar != "Right"}]
                        <div class="col-12 col-md-3 [{$oView->getClassName()}]">
                            <div id="sidebar">
                                [{include file="layout/sidebar.tpl"}]
                            </div>
                        </div>
                    [{/if}]


                    <div class="col-12[{if $sidebar}] col-md-9[{/if}]">


                        <div class="content" id="content">

                            [{block name="content_main"}]
                                [{include file="message/errors.tpl"}]

                                [{foreach from=$oxidBlock_content item="_block"}]
                                    [{$_block}]
                                [{/foreach}]
                            [{/block}]
                        </div>

                    </div>


                    [{if $sidebar && $sidebar == "Right"}]
                        <div class="col-12 col-md-3 [{$oView->getClassName()}]">
                            <div id="sidebar">
                                [{include file="layout/sidebar.tpl"}]
                            </div>
                        </div>
                    [{/if}]

                </div>
            </div>
        </div>

    </div>
</div>
    [{include file="layout/footer.tpl"}]

    [{block name="layout_init_social"}]
    [{/block}]

    <i class="fa fa-chevron-circle-up icon-4x" id="jumptotop"></i>
[{/capture}]
[{include file="layout/base.tpl"}]
