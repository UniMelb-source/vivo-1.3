<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->
<div class="wrapper">
<div id="g-header" role="banner">
    <div class="wrapper">
      <ul class="skiplinks">
        <li><a href="#g-global-menu">Skip to navigation</a></li>

        <li><a href="#main-content">Skip to content</a></li>
      </ul>

      <ol id="g-breadcrumb-menu">
        <li id="g-breadcrumb-home"><a href="http://www.unimelb.edu.au/">UniMelb Home</a></li>        
	  </ol>

      <hr />

      <ol id="g-global-menu" role="navigation">
		<a id="g-global-menu-logo" href="http://www.unimelb.edu.au" name="g-global-menu-logo">The University of Melbourne</a>

        <li><a href="http://brand.unimelb.edu.au/global/study.html" id="g-global-menu-study" name="g-global-menu-study">Study</a></li>

        <li><a href="http://brand.unimelb.edu.au/global/research.html" id="g-global-menu-research" name="g-global-menu-research">Research</a></li>

        <li><a href="http://brand.unimelb.edu.au/global/community.html" id="g-global-menu-community" name="g-global-menu-community">Community</a></li>

        <li><a href="http://brand.unimelb.edu.au/global/contact-maps.html" id="g-global-menu-contact-maps" class="last" name="g-global-menu-contact-maps">Contact &amp; Maps</a></li>
      </ol>
      <hr class="g-clear-floats" />
    </div>
</div>

<header id="branding" role="banner">
    <#-- <h1 class="vivo-logo"><a title="VIVO | enabling national networking of scientists" href="${urls.home}"><span class="displace">${siteName}</span></a></h1> -->
    <#-- Since we are using a graphic text for the tagline, we won't render ${siteTagline}
    <#if siteTagline?has_content>
        <em>${siteTagline}</em>
    </#if>-->

	<div class="header">
        <div class="hgroup">
          <!-- <p><a href="#">The Faculty of Bar</a></p> -->
          <h1><a href="#">Find an Expert</a></h1>
        </div>
        <hr>
    </div>
    
    <section id="search" role="region">
        <fieldset>
            <legend>Search form</legend>
            
            <form id="search-form" action="${urls.search}" name="search" role="search"> 
                <div id="search-field">
                    <input type="text" name="querytext" class="search-vivo" value="${querytext!}" />
                    <input type="submit" value="Search" class="search">
                </div>
            </form>
        </fieldset>
    </section>
</header>
