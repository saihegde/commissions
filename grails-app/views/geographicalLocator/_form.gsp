<%@ page import="commissions.GeographicalLocator" %>



<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="geographicalLocator.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="country" from="${commissions.Country?.values()}" keys="${commissions.Country.values()*.name()}" required="" value="${geographicalLocatorInstance?.country?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="geographicalLocator.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${geographicalLocatorInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'county', 'error')} required">
	<label for="county">
		<g:message code="geographicalLocator.county.label" default="County" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="county" required="" value="${geographicalLocatorInstance?.county}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'line1', 'error')} required">
	<label for="line1">
		<g:message code="geographicalLocator.line1.label" default="Line1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="line1" required="" value="${geographicalLocatorInstance?.line1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'line2', 'error')} required">
	<label for="line2">
		<g:message code="geographicalLocator.line2.label" default="Line2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="line2" required="" value="${geographicalLocatorInstance?.line2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'party', 'error')} required">
	<label for="party">
		<g:message code="geographicalLocator.party.label" default="Party" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="party" name="party.id" from="${commissions.Party.list()}" optionKey="id" required="" value="${geographicalLocatorInstance?.party?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="geographicalLocator.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${geographicalLocatorInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicalLocatorInstance, field: 'zipcode', 'error')} required">
	<label for="zipcode">
		<g:message code="geographicalLocator.zipcode.label" default="Zipcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipcode" required="" value="${geographicalLocatorInstance?.zipcode}"/>

</div>

