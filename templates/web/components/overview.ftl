<#import "/templates/system/common/cstudio-support.ftl" as studio />

<section id="${contentModel.sectionId}" class="parallax-section" <@studio.componentAttr path=contentModel.storeUrl ice=true /> >
	<div class="container">
		<div class="row" <@studio.iceAttr iceGroup="iceOverview" path=contentModel.storeUrl /> >
			<div class="col-md-6 col-sm-12">
				<img src="${contentModel.imageSection}" class="img-responsive" alt="${contentModel.titleText}">
                
                <#if contentModel.displayBlockQuote == 'true'>
					<blockquote class="wow fadeInUp" data-wow-delay="1.9s" <@studio.iceAttr iceGroup="iceQuote" path=contentModel.storeUrl /> >${contentModel.quoteDescription}</blockquote>
                </#if>
			</div>

			<div class="col-md-1"></div>

			<div class="wow fadeInUp col-md-4 col-sm-12" data-wow-delay="1s">
				<div class="overview-detail">
					<h2>${contentModel.titleText}</h2>
					${contentModel.description}
                    
                    <#if contentModel.displayButton == 'true'>
						<a href="${contentModel.buttonSectionLink}" class="btn btn-default smoothScroll" <@studio.iceAttr iceGroup="iceButton" path=contentModel.storeUrl /> >${contentModel.buttonText}</a>
                    </#if>
				</div>
			</div>

			<div class="col-md-1"></div>

		</div>
	</div>
</section>