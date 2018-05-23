[{assign var="_oRecommendationList" value=$oView->getSimilarRecommLists()}]
[{assign var="oRecommList" value=$oView->getRecommList()}]

[{if $_oRecommendationList || $oRecommList->getRecommSearch()}]
    <div class="box card bg-light d-none d-lg-block" id="recommendationsBox">
            <div class="card-header">
                <h3 class="h3">
                    [{oxmultilang ident="LISTMANIA"}]
                </h3>
            </div>
            [{if $_oRecommendationList}]
                [{$_oRecommendationList->rewind()}]

                [{if $_oRecommendationList->current()}]
                    [{assign var="_oFirstRecommendationList" value=$_oRecommendationList->current()}]
                    [{assign var="_oBoxTopProduct" value=$_oFirstRecommendationList->getFirstArticle()}]
                    [{assign var="_sTitle" value="`$_oBoxTopProduct->oxarticles__oxtitle->value` `$_oBoxTopProduct->oxarticles__oxvarselect->value`"|strip_tags}]
                    <div class="text-center">
                        <a href="[{$_oBoxTopProduct->getMainLink()}]" class="featured img-thumbnail" title="[{$_sTitle}]">
                            <img src="[{$_oBoxTopProduct->getIconUrl()}]" alt="[{$_sTitle}]">
                        </a>
                    </div>
                [{/if}]
            [{/if}]
            <div class="card-body">
                [{if $_oRecommendationList}]
                    [{foreach from=$_oRecommendationList item=_oListItem name="testRecommendationsList"}]

                            <a href="[{$_oListItem->getLink()}]"><b>[{$_oListItem->oxrecommlists__oxtitle->value|strip_tags}]</b></a>
                            <div class="desc">[{oxmultilang ident="LIST_BY"}]: [{$_oListItem->oxrecommlists__oxauthor->value|strip_tags}]</div>
                    [{/foreach}]
                [{/if}]
            [{if $_oRecommendationList || $oRecommList->getRecommSearch()}]
                <form name="basket" class="recommendationsSearchForm" action="[{$oViewConf->getSelfActionLink()}]" method="post">
                    <div>
                        <input type="hidden" name="cl" value="recommlist">
                        [{$oViewConf->getHiddenSid()}]
                    </div>
                    <label>[{oxmultilang ident="SEARCH_FOR_LISTS"}]</label>
                    <div class="input-group">
                        <input type="text" name="searchrecomm" id="searchRecomm" value="[{$oRecommList->getRecommSearch()}]" class="searchInput form-control">
                        <span class="input-group-append">
                            <button class="submitButton largeButton btn btn-outline-dark" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </form>
            [{/if}]
        </div>
    </div>
[{/if}]