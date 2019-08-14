[{if $blOrderRemark}]
    <div class="form-group">
        <div class="col-lg-12">
            <textarea id="orderRemark" rows="7" name="order_remark" class="form-control" placeholder="[{oxmultilang ident="HERE_YOU_CAN_ENETER_MESSAGE"}]">[{$oView->getOrderRemark()}]</textarea>
        </div>
    </div>
[{/if}]
