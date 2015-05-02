<%@ page import="testApp.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="employee.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${employeeInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="employee.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${employeeInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'salary', 'error')} required">
    <label for="salary">
        <g:message code="employee.salary.label" default="Salary"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="salary" value="${fieldValue(bean: employeeInstance, field: 'salary')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'taxRate', 'error')} required">
    <label for="taxRate">
        <g:message code="employee.taxRate.label" default="Tax Rate"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="taxRate" value="${fieldValue(bean: employeeInstance, field: 'taxRate')}" required=""/>
</div>

