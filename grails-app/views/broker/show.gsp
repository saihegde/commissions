
<%@ page import="commissions.Broker" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'broker.label', default: 'Broker')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-broker" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-broker" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list broker">
			
				<g:if test="${brokerInstance?.addresses}">
				<li class="fieldcontain">
					<span id="addresses-label" class="property-label"><g:message code="broker.addresses.label" default="Addresses" /></span>
					
						<g:each in="${brokerInstance.addresses}" var="a">
						<span class="property-value" aria-labelledby="addresses-label"><g:link controller="geographicalLocator" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="broker.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${brokerInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="broker.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${brokerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="broker.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${brokerInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="broker.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${brokerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="broker.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${brokerInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="broker.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${brokerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brokerInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="broker.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${brokerInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:brokerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${brokerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
