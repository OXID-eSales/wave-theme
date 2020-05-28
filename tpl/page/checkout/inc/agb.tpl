<div class="agb card">
    [{if !$hideButtons}]

        [{if !$oView->isActive('PsLogin')}]
            [{if $oView->isConfirmAGBActive()}]
                [{oxifcontent ident="oxrighttocancellegend" object="oContent"}]
                    <div class="card-header">
                        <h3 class="card-title">[{$oContent->oxcontents__oxtitle->value}]</h3>
                    </div>
                [{/oxifcontent}]
            [{else}]
                [{oxifcontent ident="oxrighttocancellegend2" object="oContent"}]
                    <div class="card-header">
                        <h3 class="card-title">[{$oContent->oxcontents__oxtitle->value}]</h3>
                    </div>
                [{/oxifcontent}]
            [{/if}]
        [{/if}]

        <div class="card-body">
            [{block name="checkout_order_agb_inner"}]
                [{if !$oView->isActive('PsLogin')}]
                    [{if $oView->isConfirmAGBActive()}]
                        [{oxifcontent ident="oxrighttocancellegend" object="oContent"}]
                            <p class="agbConfirmation checkbox">
                                <label>
                                    <input id="checkAgbTop" type="checkbox" name="ord_agb" value="1"> [{$oContent->oxcontents__oxcontent->value}]
                                </label>
                            </p>
                        [{/oxifcontent}]
                    [{else}]
                        [{oxifcontent ident="oxrighttocancellegend2" object="oContent"}]
                            <p class="agbConfirmation">
                                [{$oContent->oxcontents__oxcontent->value}]
                            </p>
                        [{/oxifcontent}]
                    [{/if}]
                [{/if}]

                [{if $oViewConf->isFunctionalityEnabled('blEnableIntangibleProdAgreement') }]
                    [{assign var="oExplanationMarks" value=$oView->getBasketContentMarkGenerator() }]
                    [{if $oxcmp_basket->hasArticlesWithDownloadableAgreement() }]
                        [{oxifcontent ident="oxdownloadableproductsagreement" object="oContent"}]
                            <p id="noteForDownloadableArticles" class="agbConfirmation checkbox">
                                <label>
                                    <input id="oxdownloadableproductsagreement" type="checkbox" name="oxdownloadableproductsagreement" value="1">
                                    [{$oExplanationMarks->getMark('downloadable')}] [{$oContent->oxcontents__oxcontent->value}]
                                </label>
                            </p>
                        [{/oxifcontent}]
                    [{/if}]
                    [{if $oxcmp_basket->hasArticlesWithIntangibleAgreement() }]
                        [{oxifcontent ident="oxserviceproductsagreement" object="oContent"}]
                            <p id="noteForIntangibleArticles" class="agbConfirmation checkbox">
                                <label>
                                    <input id="oxserviceproductsagreement" type="checkbox" name="oxserviceproductsagreement" value="1">
                                    [{$oExplanationMarks->getMark('intangible')}] [{$oContent->oxcontents__oxcontent->value}]
                                </label>
                            </p>
                        [{/oxifcontent}]
                    [{/if}]
                [{/if}]

                [{if $oViewConf->isFunctionalityEnabled("blShowTSInternationalFeesMessage")}]
                    [{oxifcontent ident="oxtsinternationalfees" object="oTSIFContent"}]
                        <hr/>[{$oTSIFContent->oxcontents__oxcontent->value}]
                    [{/oxifcontent}]
                [{/if}]

                [{if $payment->oxpayments__oxid->value eq "oxidcashondel" && $oViewConf->isFunctionalityEnabled("blShowTSCODMessage")}]
                    [{oxifcontent ident="oxtscodmessage" object="oTSCODContent"}]
                        <hr/>[{$oTSCODContent->oxcontents__oxcontent->value}]
                    [{/oxifcontent}]
                [{/if}]
            [{/block}]
        </div>
    [{/if}]
</div>

[{oxscript add="$('#checkAgbTop').click(function(){ $('input[name=ord_agb]').val($(this).is(':checked') ? '1' : '0');});"}]
[{oxscript add="$('#oxdownloadableproductsagreement').click(function(){ $('input[name=oxdownloadableproductsagreement]').val($(this).is(':checked') ? '1' : '0');});"}]
[{oxscript add="$('#oxserviceproductsagreement').click(function(){ $('input[name=oxserviceproductsagreement]').val($(this).is(':checked') ? '1' : '0');});"}]