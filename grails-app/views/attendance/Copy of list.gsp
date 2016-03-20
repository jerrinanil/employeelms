
<%@ page import="employeelms.Attendance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance.label', default: 'Attendance')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-attendance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-attendance" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="attendanceDate" title="${message(code: 'attendance.attendanceDate.label', default: 'Attendance Date')}" />
					
						<g:sortableColumn property="attendanceDay" title="${message(code: 'attendance.attendanceDay.label', default: 'Attendance Day')}" />
					
						<g:sortableColumn property="attendanceID" title="${message(code: 'attendance.attendanceID.label', default: 'Attendance ID')}" />
					
						<th><g:message code="attendance.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="hours" title="${message(code: 'attendance.hours.label', default: 'Hours')}" />
					
						<g:sortableColumn property="overtime" title="${message(code: 'attendance.overtime.label', default: 'Overtime')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${attendanceInstanceList}" status="i" var="attendanceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${attendanceInstance.id}">${fieldValue(bean: attendanceInstance, field: "attendanceDate")}</g:link></td>
					
						<td>${fieldValue(bean: attendanceInstance, field: "attendanceDay")}</td>
					
						<td>${fieldValue(bean: attendanceInstance, field: "attendanceID")}</td>
					
						<td>${fieldValue(bean: attendanceInstance, field: "employee")}</td>
					
						<td>${fieldValue(bean: attendanceInstance, field: "hours")}</td>
					
						<td>${fieldValue(bean: attendanceInstance, field: "overtime")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${attendanceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
