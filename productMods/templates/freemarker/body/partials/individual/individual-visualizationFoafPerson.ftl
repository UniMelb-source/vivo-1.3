<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- Template for sparkline visualization on individual profile page -->

<#-- Determine whether this person is an author -->
<#assign isAuthor = p.hasStatements(propertyGroups, "${core}authorInAuthorship") />

<#-- Determine whether this person is involved in any grants -->
<#assign isInvestigator = ( p.hasStatements(propertyGroups, "${core}hasInvestigatorRole") ||
                            p.hasStatements(propertyGroups, "${core}hasPrincipalInvestigatorRole") || 
                            p.hasStatements(propertyGroups, "${core}hasCo-PrincipalInvestigatorRole") ) >

<#if (isAuthor || isInvestigator)>
 
    ${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/visualization/visualization.css" />')}
    <#assign standardVisualizationURLRoot ="/visualization">
    
    <section id="visualization" role="region">
        <#if isAuthor>
            <#assign coAuthorIcon = "${urls.images}/visualization/co_author_icon.png">
            <#assign mapOfScienceIcon = "${urls.images}/visualization/mapofscience/vivo-scimap.png">
            <#assign coAuthorVisUrl = individual.coAuthorVisUrl>
            <#assign mapOfScienceVisUrl = individual.mapOfScienceUrl>
            
            <#assign googleJSAPI = "https://www.google.com/jsapi?autoload=%7B%22modules%22%3A%5B%7B%22name%22%3A%22visualization%22%2C%22version%22%3A%221%22%2C%22packages%22%3A%5B%22imagesparkline%22%5D%7D%5D%7D">             

			<div class="nav">
				<ul>
					<li>Publications in VIVO
						<ul>
							<div id="vis_container_coauthor">&nbsp;</div>							
						</ul>
					</li>
					<li>Visualizations
						<ul>
							<li>            
						        <a href="${coAuthorVisUrl}"><img src="${coAuthorIcon}" alt="Co-author network icon" width="30px" height="30px" style="vertical-align:middle;padding-right:5px;" />Co-Author Network</a>
							</li>
							<li>
								<a href="${mapOfScienceVisUrl}"><img src="${mapOfScienceIcon}" alt="Map Of Science icon" width="30px" height="30px" style="vertical-align:middle;padding-right:5px;" />Map Of Science</a>
							</li>
            
							${scripts.add('<script type="text/javascript" src="${googleJSAPI}"></script>',
								          '<script type="text/javascript" src="${urls.base}/js/visualization/visualization-helper-functions.js"></script>',
								          '<script type="text/javascript" src="${urls.base}/js/visualization/sparkline.js"></script>')}           
						
							<script type="text/javascript">
								var visualizationUrl = '${urls.base}/visualizationAjax?uri=${individual.uri?url}';
								var infoIconSrc = '${urls.images}/iconInfo.png';
							</script>
						</#if>
				
						<#if isInvestigator>
							<#assign coInvestigatorVisUrl = individual.coInvestigatorVisUrl>
							<#assign coInvestigatorIcon = "${urls.images}/visualization/co_investigator_icon.png">
							
							<li>
								<a href="${coInvestigatorVisUrl}"><img src="${coInvestigatorIcon}" alt="Co-investigator network icon" width="30px" height="30px" style="vertical-align:middle;padding-right:5px;" />Co-Investigator Network</a>
							</li>
						</#if>

						</ul>
					</li>
				</ul>
			</div>

    </section>
</#if>
