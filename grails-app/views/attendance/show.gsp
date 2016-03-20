
<%@ page import="employeelms.Attendance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance.label', default: 'Attendance')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-attendance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-attendance" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list attendance">
			
				<g:if test="${attendanceInstance?.attendanceDate}">
				<li class="fieldcontain">
					<span id="attendanceDate-label" class="property-label"><g:message code="attendance.attendanceDate.label" default="Attendance Date" /></span>
					
						<span class="property-value" aria-labelledby="attendanceDate-label"><g:formatDate date="${attendanceInstance?.attendanceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInstance?.attendanceDay}">
				<li class="fieldcontain">
					<span id="attendanceDay-label" class="property-label"><g:message code="attendance.attendanceDay.label" default="Attendance Day" /></span>
					
						<span class="property-value" aria-labelledby="attendanceDay-label"><g:fieldValue bean="${attendanceInstance}" field="attendanceDay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInstance?.attendanceID}">
				<li class="fieldcontain">
					<span id="attendanceID-label" class="property-label"><g:message code="attendance.attendanceID.label" default="Attendance ID" /></span>
					
						<span class="property-value" aria-labelledby="attendanceID-label"><g:fieldValue bean="${attendanceInstance}" field="attendanceID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="attendance.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${attendanceInstance?.employee?.id}">${attendanceInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInstance?.hours}">
				<li class="fieldcontain">
					<span id="hours-label" class="property-label"><g:message code="attendance.hours.label" default="Hours" /></span>
					
						<span class="property-value" aria-labelledby="hours-label"><g:fieldValue bean="${attendanceInstance}" field="hours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInstance?.overtime}">
				<li class="fieldcontain">
					<span id="overtime-label" class="property-label"><g:message code="attendance.overtime.label" default="Overtime" /></span>
					
						<span class="property-value" aria-labelledby="overtime-label"><g:fieldValue bean="${attendanceInstance}" field="overtime"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${attendanceInstance?.id}" />
					<g:link class="edit" action="edit" id="${attendanceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
