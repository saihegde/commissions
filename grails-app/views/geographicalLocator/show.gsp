
<%@ page import="commissions.GeographicalLocator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'geographicalLocator.label', default: 'GeographicalLocator')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-geographicalLocator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-geographicalLocator" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list geographicalLocator">
			
				<g:if test="${geographicalLocatorInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="geographicalLocator.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="geographicalLocator.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="geographicalLocator.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.line1}">
				<li class="fieldcontain">
					<span id="line1-label" class="property-label"><g:message code="geographicalLocator.line1.label" default="Line1" /></span>
					
						<span class="property-value" aria-labelledby="line1-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="line1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.line2}">
				<li class="fieldcontain">
					<span id="line2-label" class="property-label"><g:message code="geographicalLocator.line2.label" default="Line2" /></span>
					
						<span class="property-value" aria-labelledby="line2-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="line2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.party}">
				<li class="fieldcontain">
					<span id="party-label" class="property-label"><g:message code="geographicalLocator.party.label" default="Party" /></span>
					
						<span class="property-value" aria-labelledby="party-label"><g:link controller="party" action="show" id="${geographicalLocatorInstance?.party?.id}">${geographicalLocatorInstance?.party?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="geographicalLocator.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicalLocatorInstance?.zipcode}">
				<li class="fieldcontain">
					<span id="zipcode-label" class="property-label"><g:message code="geographicalLocator.zipcode.label" default="Zipcode" /></span>
					
						<span class="property-value" aria-labelledby="zipcode-label"><g:fieldValue bean="${geographicalLocatorInstance}" field="zipcode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:geographicalLocatorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${geographicalLocatorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
