
[{capture assign="sValidationJS"}]
    [{strip}]
        $('input,select,textarea').not('[type=submit]').jqBootstrapValidation(
            {
                filter: function()
                {
                    return $(this).is(':visible');
                }
            }
        );
    [{/strip}]
[{/capture}]

[{oxscript add=$sValidationJS}]
[{block name="user"}]
    <form class="js-oxValidate form-horizontal" action="[{$oViewConf->getSelfActionLink()}]" name="order" method="post" novalidate="novalidate">
        [{block name="user_form"}]
            [{assign var="aErrors" value=$oView->getFieldValidationErrors()}]
            <div class="addressCollumns">
                <div class="hidden">
                    [{$oViewConf->getHiddenSid()}]
                    [{$oViewConf->getNavFormParams()}]
                    <input type="hidden" name="fnc" value="changeuser_testvalues">
                    <input type="hidden" name="cl" value="account_user">
                    <input type="hidden" name="CustomError" value='user'>
                    <input type="hidden" name="blshowshipaddress" value="1">
                </div>

                [{* Rechnungsadresse *}]
                <div class="card">
                    <div class="card-header">
                        [{block name="user_billing_address_head"}]
                            [{oxmultilang ident="BILLING_ADDRESS"}]
                            <button id="userChangeAddress" class="btn btn-warning btn-sm hasTooltip float-right edit-button" name="changeBillAddress" type="button" title="[{oxmultilang ident="CHANGE"}]">
                                <i class="fas fa-pencil-alt"></i>
                            </button>
                        [{/block}]
                    </div>
                    <div class="card-body">
                        [{block name="user_billing_address"}]
                            [{block name="user_billing_address_text"}]
                                <div id="addressText">
                                    [{include file="widget/address/billing_address.tpl"}]
                                </div>
                            [{/block}]
                            [{block name="user_billing_address_form"}]
                                <div style="display: none;" id="addressForm">
                                    [{include file="form/fieldset/user_email.tpl"}]
                                    [{include file="form/fieldset/user_billing.tpl" noFormSubmit=true}]
                                </div>
                            [{/block}]
                        [{/block}]
                    </div>
                </div>

                [{oxscript add="$('#userChangeAddress').click( function() { $('#addressForm, #addressText').toggle();return false;});"}]

                [{* Lieferadresse *}]
                [{block name="user_shipping_address"}]
                    <div class="card">
                        <div class="card-header">
                            [{block name="user_shipping_address_head"}]
                                [{oxmultilang ident="SHIPPING_ADDRESSES"}]
                            [{/block}]
                        </div>
                        <div class="card-body">
                            <div class="checkbox">
                                [{block name="user_shipping_address_choice"}]
                                    <label>
                                        <input type="checkbox" name="blshowshipaddress" id="showShipAddress" [{if !$oView->showShipAddress()}]checked[{/if}] value="0"> [{oxmultilang ident="USE_BILLINGADDRESS_FOR_SHIPPINGADDRESS"}]
                                    </label>
                                [{/block}]
                            </div>
                            [{block name="user_shipping_address_form"}]
                                <div id="shippingAddress" [{if !$oView->showShipAddress()}] style="display: none;" [{/if}]>
                                    [{include file="form/fieldset/user_shipping.tpl" noFormSubmit=true}]
                                </div>
                            [{/block}]
                        </div>
                    </div>
                    [{oxscript add="$('#showShipAddress').change( function() { $('#shippingAddress').toggle($(this).is(':not(:checked)')); });"}]
                [{/block}]
            </div>
            <div class="form-group">
                <div class="col-lg-12">
                    <button id="accUserSaveTop" class="btn btn-primary" name="userform" type="submit">[{oxmultilang ident="SAVE"}]</button>
                </div>
            </div>
        [{/block}]
    </form>
    [{include file="form/fieldset/delete_shipping_address_modal.tpl"}]
[{/block}]
