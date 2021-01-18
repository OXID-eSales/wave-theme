[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"}]
<div class="card">
    <form class="js-oxValidate" id="optionLogin" name="login" action="[{$oViewConf->getSslSelfLink()}]" method="post" role="form" novalidate="novalidate">

        <div class="card-header">
            <h3 class="card-title">[{oxmultilang ident="ALREADY_CUSTOMER"}]</h3>
        </div>
        <div class="card-body">
            <div class="hidden">
                [{$oViewConf->getHiddenSid()}]
                [{$oViewConf->getNavFormParams()}]
                <input type="hidden" name="fnc" value="login_noredirect">
                <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
            </div>
            [{block name="checkout_options_login_text"}]
                <p>[{oxmultilang ident="LOGIN_DESCRIPTION"}]</p>
            [{/block}]
            [{assign var="aErrors" value=$oView->getFieldValidationErrors()}]
            <div class="form-group [{if $aErrors}]oxInValid[{/if}]">
                <label for="lgn_usr">[{oxmultilang ident="EMAIL_ADDRESS"}]</label>
                <input type="text" id="lgn_usr" name="lgn_usr" autocomplete="username" class="form-control textbox js-oxValidate js-oxValidate_notEmpty" placeholder="[{oxmultilang ident="EMAIL_ADDRESS"}]" required="required">
                <div class="help-block"></div>
            </div>
            <div class="form-group [{if $aErrors}]oxInValid[{/if}]">
                <label for="lgn_pwd">[{oxmultilang ident="PASSWORD"}]</label>
                <div class="input-group">
                    <input type="password" id="lgn_pwd" name="lgn_pwd" autocomplete="current-password" class="form-control js-oxValidate js-oxValidate_notEmpty textbox stepsPasswordbox" placeholder="[{oxmultilang ident="PASSWORD"}]" required="required">
                    <div class="input-group-append">
                        <a class="btn btn-outline-dark forgotPasswordOpener" id="step2PswdOpener" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd"}]" title="[{oxmultilang ident="FORGOT_PASSWORD"}]">?</a>
                    </div>
                </div>
                <div class="help-block"></div>
            </div>
        </div>
        <div class="card-footer text-right">
            <button type="submit" class="btn btn-primary submitButton">[{oxmultilang ident="LOGIN"}] <i class="fa fa-caret-right"></i></button>
        </div>
    </form>
</div>
