[{capture append="oxidBlock_content"}]
    [{assign var="template_title" value=""}]

    [{* ordering steps *}]
    [{include file="page/checkout/inc/steps.tpl" active=2}]
    [{if !$oxcmp_user}]
        [{block name="user_checkout_registration_next_step_top"}]
            <div class="card bg-light cart-buttons">
                <div class="card-body">
                    <a href="[{oxgetseourl ident=$oViewConf->getBasketLink()}]" class="btn btn-outline-dark prevStep submitButton largeButton" id="userBackStepTop">[{oxmultilang ident="PREVIOUS_STEP"}]</a>
                </div>
            </div>
        [{/block}]
    [{/if}]

    <div class="row">
        [{if $oxcmp_user}]
            [{block name="checkout_user_change"}]
                <div class="col-12">
                    [{include file="form/user_checkout_change.tpl"}]
                </div>
            [{/block}]
        [{else}]
            <div class="col-sm-4 order-sm-2">
                [{block name="checkout_options_login"}]
                    [{include file="form/login.tpl"}]
                [{/block}]
            </div>
            <div class="col-sm-8 order-sm-1">
                [{include file="form/user_checkout_registration.tpl"}]
            </div>
        [{/if}]
    </div>

    [{insert name="oxid_tracker" title=$template_title}]
[{/capture}]

[{include file="layout/page.tpl"}]
