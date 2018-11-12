[{block name="dd_footer_newsletter_form"}]
<div class="row">
    <div class="col-12 mx-auto col-md-8 mx-md-0 col-lg-12">
        <form class="newsletter-form" role="form" action="[{$oViewConf->getSslSelfLink()}]" method="post">
            <div class="form-group">
                [{block name="dd_footer_newsletter_form_inner"}]
                    <div class="hidden">
                        [{$oViewConf->getHiddenSid()}]
                        <input type="hidden" name="fnc" value="fill">
                        <input type="hidden" name="cl" value="newsletter">
                        [{if $oView->getProduct()}]
                            [{assign var="product" value=$oView->getProduct()}]
                            <input type="hidden" name="anid" value="[{$product->oxarticles__oxnid->value}]">
                        [{/if}]
                    </div>

                    [{block name="dd_footer_newsletter_form_inner_group"}]
                        <label class="sr-only" for="footer_newsletter_oxusername">[{oxmultilang ident="NEWSLETTER"}]</label>
                        <div class="input-group">
                            <input type="text" class="form-control" type="email" name="editval[oxuser__oxusername]" placeholder="[{oxmultilang ident="EMAIL"}]" aria-label="[{oxmultilang ident="EMAIL"}]">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">[{oxmultilang ident="SUBSCRIBE"}]</button>
                            </div>
                        </div>
                    [{/block}]
                [{/block}]
            </div>
        </form>
    </div>
</div>
[{/block}]