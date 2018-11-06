[{block name="checkout_user_options"}]
    [{oxscript include="js/widgets/oxequalizer.min.js" priority=10}]
    [{oxscript add="$(window).on('load', function(){ if( !isMobileDevice() ) { oxEqualizer.equalHeight( $( '.checkoutOptions .card-body' ) ); } });"}]

    [{assign var="sColClass" value="col-lg-6"}]
    [{if $oView->getShowNoRegOption()}]
        [{assign var="sColClass" value="col-lg-4"}]
    [{/if}]

    <div class="checkoutOptions">
		<div class="card-deck">
			[{block name="checkout_options_noreg"}]
				[{if $oView->getShowNoRegOption()}]
					<div class="card">
						<form action="[{$oViewConf->getSslSelfLink()}]" method="post" id="optionNoRegistration">
							<div class="card-header">
								<h3 class="card-title">[{oxmultilang ident="PURCHASE_WITHOUT_REGISTRATION"}]</h3>
							</div>
							<div class="card-body">
								<div class="hidden">
									[{$oViewConf->getHiddenSid()}]
									[{$oViewConf->getNavFormParams()}]
									<input type="hidden" name="cl" value="user">
									<input type="hidden" name="fnc" value="">
									<input type="hidden" name="option" value="1">
								</div>
								[{block name="checkout_options_noreg_text"}]
									<p>[{oxmultilang ident="DO_NOT_WANT_CREATE_ACCOUNT"}]</p>
									[{if $oView->isDownloadableProductWarning()}]
										<p class="errorMsg">[{oxmultilang ident="MESSAGE_DOWNLOADABLE_PRODUCT"}]</p>
									[{/if}]
								[{/block}]
							</div>
							<div class="card-footer text-right">
								<button class="btn btn-primary submitButton nextStep" type="submit">[{oxmultilang ident="NEXT"}] <i class="fa fa-caret-right"></i></button>
							</div>
						</form>
					</div>
				[{/if}]
			[{/block}]

			[{block name="checkout_options_reg"}]
				<div class="card">
					<form action="[{$oViewConf->getSslSelfLink()}]" method="post" id="optionRegistration">

						<div class="card-header">
							<h3 class="card-title">[{oxmultilang ident="OPEN_ACCOUNT"}]</h3>
						</div>
						<div class="card-body">
							<div class="hidden">
								[{$oViewConf->getHiddenSid()}]
								[{$oViewConf->getNavFormParams()}]
								<input type="hidden" name="cl" value="user">
								<input type="hidden" name="fnc" value="">
								<input type="hidden" name="option" value="3">
							</div>

							[{block name="checkout_options_reg_text"}]
								[{oxifcontent ident="oxregistrationdescription" object="oCont"}]
									[{$oCont->oxcontents__oxcontent->value}]
								[{/oxifcontent}]
							[{/block}]
						</div>
						<div class="card-footer text-right">
							<button class="btn btn-primary submitButton nextStep" type="submit">[{oxmultilang ident="NEXT"}] <i class="fa fa-caret-right"></i></button>
						</div>
					</form>
				</div>
			[{/block}]

			[{block name="checkout_options_login"}]
				[{include file="form/login.tpl"}]
			[{/block}]
		</div>
    </div>
[{/block}]
