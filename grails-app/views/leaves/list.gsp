
<%@ page import="employeelms.Leaves" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'leaves.label', default: 'Leaves')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-leaves" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-leaves" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="comments" title="${message(code: 'leaves.comments.label', default: 'Comments')}" />
					
						<g:sortableColumn property="days" title="${message(code: 'leaves.days.label', default: 'Days')}" />
					
						<th><g:message code="leaves.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="endDate" title="${message(code: 'leaves.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="leaveId" title="${message(code: 'leaves.leaveId.label', default: 'Leave Id')}" />
					
						<g:sortableColumn property="leaveType" title="${message(code: 'leaves.leaveType.label', default: 'Leave Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${leavesInstanceList}" status="i" var="leavesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${leavesInstance.id}">${fieldValue(bean: leavesInstance, field: "comments")}</g:link></td>
					
						<td>${fieldValue(bean: leavesInstance, field: "days")}</td>
					
						<td>${fieldValue(bean: leavesInstance, field: "employee")}</td>
					
						<td><g:formatDate date="${leavesInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: leavesInstance, field: "leaveId")}</td>
					
						<td>${fieldValue(bean: leavesInstance, field: "leaveType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${leavesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
