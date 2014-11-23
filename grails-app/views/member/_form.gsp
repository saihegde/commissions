<%@ page import="commissions.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'addresses', 'error')} ">
	<label for="addresses">
		<g:message code="member.addresses.label" default="Addresses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.addresses?}" var="a">
    <li><g:link controller="geographicalLocator" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="geographicalLocator" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'geographicalLocator.label', default: 'GeographicalLocator')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="member.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${memberInstance?.birthDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="member.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${memberInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="member.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${commissions.Gender?.values()}" keys="${commissions.Gender.values()*.name()}" required="" value="${memberInstance?.gender?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="member.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${memberInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="member.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${memberInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="member.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${memberInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'planMembership', 'error')} ">
	<label for="planMembership">
		<g:message code="member.planMembership.label" default="Plan Membership" />
		
	</label>
	<g:select name="planMembership" from="${commissions.PlanMembership.list()}" multiple="multiple" optionKey="id" size="5" value="${memberInstance?.planMembership*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="member.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${commissions.PartyType?.values()}" keys="${commissions.PartyType.values()*.name()}" required="" value="${memberInstance?.type?.name()}" />

</div>

