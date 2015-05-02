
<%@ page import="testApp.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">

				<g:if test="${employeeInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="employee.firstName.label" default="First Name" /></span>

						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${employeeInstance}" field="firstName"/></span>

				</li>
				</g:if>

				<g:if test="${employeeInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="employee.lastName.label" default="Last Name" /></span>

						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${employeeInstance}" field="lastName"/></span>

				</li>
				</g:if>

				<g:if test="${employeeInstance?.salary}">
				<li class="fieldcontain">
					<span id="salary-label" class="property-label"><g:message code="employee.salary.label" default="Salary" /></span>

						<span class="property-value" aria-labelledby="salary-label"><g:fieldValue bean="${employeeInstance}" field="salary"/></span>

				</li>
				</g:if>

				<g:if test="${employeeInstance?.taxRate}">
				<li class="fieldcontain">
					<span id="taxRate-label" class="property-label"><g:message code="employee.taxRate.label" default="Tax Rate" /></span>

						<span class="property-value" aria-labelledby="taxRate-label"><g:fieldValue bean="${employeeInstance}" field="taxRate"/></span>

				</li>
				</g:if>

			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="edit" action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
