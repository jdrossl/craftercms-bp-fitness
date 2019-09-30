<#import "/templates/system/common/cstudio-support.ftl" as studio />

<footer>
	<div class="container">
		<div class="row">

			<div class="wow fadeInUp col-md-4 col-sm-4" data-wow-delay="0.6s" <@studio.iceAttr iceGroup="iceContentText" path=contentModel.storeUrl/> >
				<h2>${contentModel.tcs_titleText}</h2>
				<p>${contentModel.tcs_description}</p>
			</div>

			<div class="wow fadeInUp col-md-5 col-sm-4"  data-wow-delay="0.9s" <@studio.iceAttr iceGroup="iceSession" path=contentModel.storeUrl/> >
				<h2>${contentModel.ss_titleText}</h2>
					<div>
						<h5>Morning</h5>
						<h4>
                        ${(contentModel.ss_morningFrom?keep_after(" "))?keep_before_last(":")} - 
                        ${(contentModel.ss_morningTo?keep_after(" "))?keep_before_last(":")}</h4>
					</div>
					<div>
						<h5>Evening</h5>
						<h4>
                        ${(contentModel.ss_eveningFrom?keep_after(" "))?keep_before_last(":")} - 
                        ${(contentModel.ss_eveningTo?keep_after(" "))?keep_before_last(":")}</h4>
					</div>
			</div>

			<div class="wow fadeInUp col-md-3 col-sm-4" data-wow-delay="1s" <@studio.iceAttr iceGroup="iceSocial" path=contentModel.storeUrl/> >
				<h2>${contentModel.sns_titleText}</h2>
				<ul class="social-icon">
					<#list contentModel.socialNetwork.item as row>
                        <li><a href="${row.sns_url}" class="fa fa-${row.sns_socialNetwork} wow fadeIn" data-wow-delay="1s"></a></li>
                    </#list>
				</ul>
			</div>

			<div class="clearfix"></div>

			<div class="col-md-12 col-sm-12" <@studio.iceAttr iceGroup="iceCopyRight" path=contentModel.storeUrl/> >
				<p class="copyright-text">Copyright &copy; ${contentModel.year} ${contentModel.companyName}
					<#if contentModel.displayThemeCredits = 'true'>
                        | Design: <a rel="nofollow" href="${contentModel.themeCreditsURL}" target="_parent">${contentModel.themeCredits}</a>
                    </#if>
                </p>
			</div>

		</div>
	</div>
</footer>