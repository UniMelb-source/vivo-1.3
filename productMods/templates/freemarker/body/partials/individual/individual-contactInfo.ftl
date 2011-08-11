<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- Contact info on individual profile page -->

<ul>

<#-- Primary Email -->    
<@emailLinks "${core}primaryEmail" />

<#-- Additional Emails --> 
<@emailLinks "${core}email" />   

 
<#-- Phone --> 
<#assign phone = propertyGroups.pullProperty("${core}phoneNumber")!>
<#if phone?has_content> <#-- true when the property is in the list, even if not populated (when editing) -->
    <li style="display: inline; list-style-type: none;"><@p.addLinkWithLabel phone editable /></li>
    <#if phone.statements?has_content> <#-- if there are any statements -->
        <#list phone.statements as statement>
            <li role="listitem" style="display: inline; list-style-type: none;">                           
               <img class ="icon-phone  middle" src="${urls.images}/individual/phoneIcon.gif" alt="phone icon" />${statement.value}
                <@p.editingLinks "${phone.localName}" statement editable />
            </li>
        </#list>
    </#if>
</#if>

</ul>

<#macro emailLinks property>
    <#assign email = propertyGroups.pullProperty(property)!>    
    <#if property == "${core}primaryEmail">
        <#local listId = "primary-email">
        <#local label = "Primary Email">
    <#else>
        <#local listId = "additional-emails">
        <#local label = "Additional Emails">
    </#if>     
    <#if email?has_content> <#-- true when the property is in the list, even if not populated (when editing) -->
        <li style="display: inline; list-style-type: none;"><@p.addLinkWithLabel email editable label/></li>
        <#if email.statements?has_content> <#-- if there are any statements -->
            <#list email.statements as statement>
                <li role="listitem" style="display: inline; list-style-type: none;">
                    <img class ="icon-email middle" src="${urls.images}/individual/emailIcon.gif" alt="email icon" />
                    <a class="email" href="mailto:${statement.value}">${statement.value}</a>
                    <@p.editingLinks "${email.localName}" statement editable />
                </li>
            </#list>
        </#if>
    </#if>
</#macro>
