[{if $oViewConf->getShowBasketTimeout()}]
    <p class="countdown">
        <span class="item">
            [{oxmultilang ident="EXPIRES_IN"}]
            [{counter name="mini_basket_countdown_nr" assign="countdown_nr"}]
        </span>
        <strong class="price" id="countdown">[{$oViewConf->getBasketTimeLeft()|oxformattime}]</strong>
    </p>
[{/if}]