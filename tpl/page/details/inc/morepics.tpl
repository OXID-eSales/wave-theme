[{assign var="oConfig" value=$oViewConf->getConfig()}]

[{if $oView->morePics()}]
    [{assign var="iMorePics" value=$oView->getIcons()|@count}]
    [{if $iMorePics > 4}]
        [{oxscript include="js/libs/jquery.flexslider.min.js" priority=2}]
        [{oxstyle include="css/libs/jquery.flexslider.min.css"}]
    [{/if}]

    <div class="details-picture-more[{if $iMorePics > 4}] flexslider[{/if}]" id="morePicsContainer">
        <ul class="[{if $iMorePics > 4}]slides[{else}]details-picture-more-list[{/if}]">
            [{oxscript add="var aMorePic=new Array();"}]
            [{foreach from=$oView->getIcons() key="iPicNr" item="oArtIcon" name="sMorePics"}]
                [{assign var="sPictureName" value=$oPictureProduct->getPictureFieldValue("oxpic", $iPicNr)}]
                [{assign var="aPictureInfo" value=$oConfig->getMasterPicturePath("product/`$iPicNr`/`$sPictureName`")|@getimagesize}]
                <li class="details-picture-more-list-item">
                    <a id="morePics_[{$smarty.foreach.sMorePics.iteration}]"  class="details-picture-more-link[{if $smarty.foreach.sMorePics.first}] selected[{/if}]" href="[{$oPictureProduct->getPictureUrl($iPicNr)}]" data-num="[{$smarty.foreach.sMorePics.iteration}]"[{if $aPictureInfo}] data-width="[{$aPictureInfo.0}]" data-height="[{$aPictureInfo.1}]"[{/if}] data-zoom-url="[{$oPictureProduct->getMasterZoomPictureUrl($iPicNr)}]">
                        <img class="details-picture-more-img" src="[{$oPictureProduct->getIconUrl($iPicNr)}]" alt="morepic-[{$smarty.foreach.sMorePics.iteration}]">
                    </a>
                </li>
            [{/foreach}]
        </ul>
    </div>
[{/if}]