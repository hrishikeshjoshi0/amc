
<%@ page import="com.amcsoft.model.party.Party_Customer" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'party_Customer.label', default: 'Party_Customer')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-party_Customer" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
				<g:sortableColumn property="partyId" title="${message(code: 'party_Customer.partyId.label', default: 'Party Id')}" />
			
				<g:sortableColumn property="externalId" title="${message(code: 'party_Customer.externalId.label', default: 'External Id')}" />
				
				<g:sortableColumn property="customerCode" title="${message(code: 'party_Customer.customerCode.label', default: 'Customer Code')}" />
			
				<g:sortableColumn property="customerRef" title="${message(code: 'party_Customer.customerRef.label', default: 'Customer Ref')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'party_Customer.description.label', default: 'Description')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${party_CustomerInstanceList}" status="i" var="party_CustomerInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${party_CustomerInstance.partyId}">${fieldValue(bean: party_CustomerInstance, field: "partyId")}</g:link></td>
			
				<td>${fieldValue(bean: party_CustomerInstance, field: "externalId")}</td>
				
				<td>${fieldValue(bean: party_CustomerInstance, field: "customerCode")}</td>
			
				<td>${fieldValue(bean: party_CustomerInstance, field: "customerRef")}</td>
			
				<td>${fieldValue(bean: party_CustomerInstance, field: "description")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${party_CustomerInstanceTotal}" />
	</div>
</section>

</body>

</html>
