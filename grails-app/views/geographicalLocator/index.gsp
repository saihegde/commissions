
<%@ page import="commissions.GeographicalLocator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'geographicalLocator.label', default: 'GeographicalLocator')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-geographicalLocator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-geographicalLocator" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="country" title="${message(code: 'geographicalLocator.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'geographicalLocator.city.label', default: 'City')}" />
					
						<g:sortableColumn property="county" title="${message(code: 'geographicalLocator.county.label', default: 'County')}" />
					
						<g:sortableColumn property="line1" title="${message(code: 'geographicalLocator.line1.label', default: 'Line1')}" />
					
						<g:sortableColumn property="line2" title="${message(code: 'geographicalLocator.line2.label', default: 'Line2')}" />
					
						<th><g:message code="geographicalLocator.party.label" default="Party" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${geographicalLocatorInstanceList}" status="i" var="geographicalLocatorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${geographicalLocatorInstance.id}">${fieldValue(bean: geographicalLocatorInstance, field: "country")}</g:link></td>
					
						<td>${fieldValue(bean: geographicalLocatorInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: geographicalLocatorInstance, field: "county")}</td>
					
						<td>${fieldValue(bean: geographicalLocatorInstance, field: "line1")}</td>
					
						<td>${fieldValue(bean: geographicalLocatorInstance, field: "line2")}</td>
					
						<td>${fieldValue(bean: geographicalLocatorInstance, field: "party")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${geographicalLocatorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
