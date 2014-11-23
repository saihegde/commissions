<%@ page import="commissions.Broker" %>



<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'addresses', 'error')} ">
	<label for="addresses">
		<g:message code="broker.addresses.label" default="Addresses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${brokerInstance?.addresses?}" var="a">
    <li><g:link controller="geographicalLocator" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="geographicalLocator" action="create" params="['broker.id': brokerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'geographicalLocator.label', default: 'GeographicalLocator')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="broker.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${brokerInstance?.birthDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="broker.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${brokerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="broker.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${commissions.Gender?.values()}" keys="${commissions.Gender.values()*.name()}" required="" value="${brokerInstance?.gender?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="broker.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${brokerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="broker.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${brokerInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="broker.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${brokerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: brokerInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="broker.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${commissions.PartyType?.values()}" keys="${commissions.PartyType.values()*.name()}" required="" value="${brokerInstance?.type?.name()}" />

</div>

