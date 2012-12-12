
<%@ page import="com.amcsoft.model.party.Party_Customer" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'party_Customer.label', default: 'Party_Customer')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-party_Customer" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.partyId.label" default="Party Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "partyId")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.customerCode.label" default="Customer Code" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "customerCode")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.customerRef.label" default="Customer Ref" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "customerRef")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.externalId.label" default="External Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "externalId")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.partyType.label" default="Party Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "partyType")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="party_Customer.status.label" default="Status" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: party_CustomerInstance, field: "status")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
