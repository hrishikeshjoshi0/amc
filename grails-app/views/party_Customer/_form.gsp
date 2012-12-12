<%@ page import="com.amcsoft.model.party.Party_Customer" %>
			<div class="control-group fieldcontain ${hasErrors(bean: party_CustomerInstance, field: 'externalId', 'error')} ">
				<label for="externalId" class="control-label"><g:message code="party_Customer.externalId.label" default="External Id" /></label>
				<div class="controls">
					<g:textField name="externalId" value="${party_CustomerInstance?.externalId}" readonly="readonly" />
					<span class="help-inline">${hasErrors(bean: party_CustomerInstance, field: 'externalId', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: party_CustomerInstance, field: 'partyType', 'error')} ">
				<label for="partyType" class="control-label"><g:message code="party_Customer.partyType.label" default="Party Type" /></label>
				<div class="controls">
					<g:textField name="partyType" value="${party_CustomerInstance?.partyType}" readonly="readonly"/>
					<span class="help-inline">${hasErrors(bean: party_CustomerInstance, field: 'partyType', 'error')}</span>
				</div>
			</div>
			
			<div class="control-group fieldcontain ${hasErrors(bean: party_CustomerInstance, field: 'customerCode', 'error')} ">
				<label for="customerCode" class="control-label"><g:message code="party_Customer.customerCode.label" default="Customer Code" /></label>
				<div class="controls">
					<g:textField name="customerCode" value="${party_CustomerInstance?.customerCode}" />
					<span class="help-inline">${hasErrors(bean: party_CustomerInstance, field: 'customerCode', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: party_CustomerInstance, field: 'customerRef', 'error')} ">
				<label for="customerRef" class="control-label"><g:message code="party_Customer.customerRef.label" default="Customer Ref" /></label>
				<div class="controls">
					<g:textField name="customerRef" value="${party_CustomerInstance?.customerRef}" />
					<span class="help-inline">${hasErrors(bean: party_CustomerInstance, field: 'customerRef', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: party_CustomerInstance, field: 'status', 'error')} ">
				<label for="status" class="control-label"><g:message code="party_Customer.status.label" default="Status" /></label>
				<div class="controls">
					<g:textField name="status" value="${party_CustomerInstance?.status}" />
					<span class="help-inline">${hasErrors(bean: party_CustomerInstance, field: 'status', 'error')}</span>
				</div>
			</div>