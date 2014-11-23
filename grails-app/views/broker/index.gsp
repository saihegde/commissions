
<%@ page import="commissions.Broker" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'broker.label', default: 'Broker')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-broker" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-broker" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="birthDate" title="${message(code: 'broker.birthDate.label', default: 'Birth Date')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'broker.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'broker.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'broker.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'broker.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'broker.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${brokerInstanceList}" status="i" var="brokerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${brokerInstance.id}">${fieldValue(bean: brokerInstance, field: "birthDate")}</g:link></td>
					
						<td>${fieldValue(bean: brokerInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: brokerInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: brokerInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: brokerInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: brokerInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${brokerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
