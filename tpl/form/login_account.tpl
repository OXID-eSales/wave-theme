[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"}]

[{if $oView->getAccountDeletionStatus() == true}]
    [{assign var="statusMessage" value="DD_DELETE_MY_ACCOUNT_SUCCESS"|oxmultilangassign}]
    [{include file="message/success.tpl" statusMessage=$statusMessage}]
[{/if}]

<div class="card-deck">
    <div class="card">
        <div class="card-header">[{oxmultilang ident="LOGIN"}]</div>
        <div class="card-body">
            <form name="login" class="js-oxValidate" action="[{$oViewConf->getSslSelfLink()}]" method="post" novalidate="novalidate">
                <div class="hidden">
                    [{$oViewConf->getHiddenSid()}]
                    [{$oViewConf->getNavFormParams()}]
                    <input type="hidden" name="fnc" value="login_noredirect">
                    <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
                    <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
                    <input type="hidden" name="oxloadid" value="[{$oViewConf->getActContentLoadId()}]">
                    [{if $oView->getArticleId()}]
                        <input type="hidden" name="aid" value="[{$oView->getArticleId()}]">
                    [{/if}]
                    [{if $oView->getProduct()}]
                        [{assign var="product" value=$oView->getProduct()}]
                        <input type="hidden" name="anid" value="[{$product->oxarticles__oxnid->value}]">
                    [{/if}]
                </div>

                <p>[{oxmultilang ident="LOGIN_ALREADY_CUSTOMER"}]</p>

                <div class="form-group[{if $aErrors}] oxInValid[{/if}]">
                    <label class="req">[{oxmultilang ident="EMAIL"}]</label>
                        <input id="loginUser" class="js-oxValidate js-oxValidate_notEmpty form-control" type="text" name="lgn_usr" role="loginUser" required="required" autocomplete="username">
                        <div class="help-block"></div>
                </div>
                <div class="form-group[{if $aErrors}] oxInValid[{/if}]">
                    <label class="req">[{oxmultilang ident="PASSWORD"}]</label>
                        <input id="loginPwd" class="js-oxValidate js-oxValidate_notEmpty form-control" type="password" name="lgn_pwd" role="loginPwd" required="required" autocomplete="current-password">
                        <div class="help-block"></div>
                </div>
                [{if $oView->showRememberMe()}]
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="checkbox" name="lgn_cook" value="1"> [{oxmultilang ident="KEEP_LOGGED_IN"}]
                            </label>
                        </div>
                    </div>
                [{/if}]

                <div class="form-group">
                    <button id="loginButton" type="submit" class="btn btn-primary" role="loginButton">[{oxmultilang ident="LOGIN"}]</button>
                </div>

                <div class="form-group">
                    <a id="forgotPasswordLink" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd"}]" class="textLink">[{oxmultilang ident="FORGOT_PASSWORD"}]</a>
                </div>
            </form>
        </div>
    </div>
    <div class="card">
        <div class="card-header">[{oxmultilang ident="OPEN_ACCOUNT"}]</div>
        <div class="card-body">
            <p>[{oxmultilang ident="DD_LOGIN_ACCOUNT_PANEL_CREATE_BODY"}]</p>
            <a id="openAccountLink" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=register"}]" class="btn btn-primary" role="button">[{oxmultilang ident="OPEN_ACCOUNT"}]</a><br />
        </div>
    </div>
</div>
