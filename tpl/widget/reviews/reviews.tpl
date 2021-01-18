[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"}]
[{oxscript add="$('.ox-write-review').on('click', function () { $('html,body').animate({scrollTop: $('#review').offset().top*0.75}, 1000) })"}]

<div id="review">
    <div class="panel-group" id="review_form_accordion">
        <div class="card">
            <div class="card-header toggle-accordion">
                <div class="h4 card-title">
                    [{if $oxcmp_user}]
                        <i class="fas fa-pencil-alt"></i> <a id="writeNewReview" data-toggle="collapse" data-parent="#review_form_accordion" href="#review_form">[{oxmultilang ident="WRITE_REVIEW"}]</a>
                    [{else}]
                        <i class="fa fa-user"></i> <a id="reviewsLogin" rel="nofollow" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" params="anid=`$oDetailsProduct->oxarticles__oxnid->value`"|cat:"&amp;sourcecl=details"|cat:$oViewConf->getNavUrlParams()}]">[{oxmultilang ident="MESSAGE_LOGIN_TO_WRITE_REVIEW"}]</a>
                    [{/if}]
                </div>
            </div>

            [{if $oxcmp_user}]
                <div id="review_form" class="panel-collapse collapse">
                    <div class="card-body">
                        [{block name="widget_reviews_form"}]
                            <form action="[{$oViewConf->getSelfActionLink()}]" method="post" id="rating" class="form-horizontal" novalidate="novalidate">
                                <div id="writeReview" class="product-review">
                                    <div class="hidden">
                                        [{if $oView->canRate()}]
                                            <input id="productRating" type="hidden" name="artrating" value="0">
                                            <input id="recommListRating" type="hidden" name="recommlistrating" value="0">
                                        [{/if}]
                                        [{$oViewConf->getHiddenSid()}]
                                        [{$oViewConf->getNavFormParams()}]
                                        [{oxid_include_dynamic file="form/formparams.tpl"}]
                                        <input type="hidden" name="fnc" value="savereview">
                                        <input type="hidden" name="cl" value="[{$oViewConf->getTopActiveClassName()}]">
                                        [{if $oDetailsProduct}]
                                            <input type="hidden" name="anid" value="[{$oDetailsProduct->oxarticles__oxid->value}]">
                                        [{else}]
                                            [{assign var="_actvrecommlist" value=$oView->getActiveRecommList()}]
                                            <input type="hidden" name="recommid" value="[{$_actvrecommlist->oxrecommlists__oxid->value}]">
                                        [{/if}]

                                        [{if $sReviewUserHash}]
                                            <input type="hidden" name="reviewuserhash" value="[{$sReviewUserHash}]">
                                        [{/if}]
                                    </div>

                                    [{block name="widget_reviews_form_rating"}]
                                        [{if $oView->canRate()}]
                                            <ul id="reviewRating" class="rating list-inline">
                                                [{section name=star start=1 loop=6}]
                                                    <li class="rating-star s[{$smarty.section.star.index}]" data-rate-value="[{$smarty.section.star.index}]">
                                                        <a class="ox-write-review ox-rateindex-[{$smarty.section.star.index}] text-warning" title="[{$smarty.section.star.index}] [{if $smarty.section.star.index==1}][{oxmultilang ident="STAR"}][{else}][{oxmultilang ident="STARS"}][{/if}]">
                                                            <i class="far fa-star"></i>
                                                        </a>
                                                    </li>
                                                [{/section}]
                                            </ul>
                                        [{/if}]
                                    [{/block}]

                                    [{block name="widget_reviews_form_fields"}]
                                        <div class="form-group">
                                            <div class="col-12">
                                                <textarea  rows="15" name="rvw_txt" class="form-control"></textarea>
                                            </div>
                                        </div>
                                    [{/block}]

                                    [{block name="widget_reviews_form_buttons"}]
                                        <div class="form-group">
                                            <div class="col-12">
                                                <button id="reviewSave" type="submit" class="submitButton btn btn-primary">[{oxmultilang ident="SAVE_RATING_AND_REVIEW"}]</button>
                                            </div>
                                        </div>
                                    [{/block}]
                                </div>
                            </form>
                        [{/block}]
                    </div>
                </div>
            [{/if}]
        </div>
    </div>

    [{if $oView->getReviews()}]
        <div class="spacer"></div>
        <div class="reviews-landscape">
            [{foreach from=$oView->getReviews() item=review name=ReviewsCounter}]
                <div class="card" id="reviewName_[{$smarty.foreach.ReviewsCounter.iteration}]" itemprop="review" itemscope itemtype="http://schema.org/Review">
                    [{block name="widget_reviews_record"}]
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-6 writer">
                                    <span itemprop="author" itemscope itemtype="https://schema.org/Person"><span itemprop="name">[{$review->oxuser__oxfname->value}]</span></span> [{oxmultilang ident="WRITES"}]
                                    <span>
                                        <time itemprop="datePublished" content="[{$review->oxreviews__oxcreate->value|date_format:"%Y-%m-%d"}]">[{$review->oxreviews__oxcreate->value|date_format:"%d.%m.%Y"}]</time>
                                    </span>
                                </div>
                                <div class="col-md-6 rating">
                                    [{if $review->oxreviews__oxrating->value}]
                                        <div class="float-right text-warning" itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating">
                                            [{section name="starRatings" start=0 loop=5}]
                                                [{if $review->oxreviews__oxrating->value >= $smarty.section.starRatings.iteration}]
                                                    <i class="fas fa-star"></i>
                                                [{else}]
                                                    <i class="far fa-star"></i>
                                                [{/if}]
                                            [{/section}]
                                            <div class="hidden">
                                                <span itemprop="worstRating">1</span>
                                                <span itemprop="ratingValue">[{$review->oxreviews__oxrating->value|default:'0'}]</span>
                                                <span itemprop="bestRating">5</span>
                                            </div>
                                        </div>
                                    [{/if}]
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="reviewText_[{$smarty.foreach.ReviewsCounter.iteration}]" itemprop="reviewBody">[{$review->oxreviews__oxtext->value}]</div>
                    [{/block}]
                </div>
            [{/foreach}]
        </div>
    [{else}]
        <div class="alert alert-info">
            [{oxmultilang ident="NO_REVIEW_AVAILABLE"}]
        </div>
    [{/if}]

</div>