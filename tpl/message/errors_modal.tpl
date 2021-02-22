<div class="modal fade" id="error-popup" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                    <span class="sr-only">[{oxmultilang ident="CLOSE"}]</span>
                </button>
                <h4 class="modal-title" id="basketModalLabel">Error</h4>
            </div>
            <div class="modal-body">
                <div id="modalbasketFlyout" class="basketFlyout">
                    [{foreach from=$Errors.popup item=oEr key=key}]
                    <p class="alert alert-danger">[{$oEr->getOxMessage()}]</p>
                    [{/foreach}]
                </div>
            </div>
        </div>
    </div>
</div>
[{oxscript add="$('#error-popup').modal('show');"}]
