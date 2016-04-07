
<%@ page import="employeelms.Leaves" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'leaves.label', default: 'Leaves')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-leaves" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-leaves" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list leaves">
			
				<g:if test="${leavesInstance?.approval}">
				<li class="fieldcontain">
					<span id="approval-label" class="property-label"><g:message code="leaves.approval.label" default="Approval" /></span>
					
						<span class="property-value" aria-labelledby="approval-label"><g:formatBoolean boolean="${leavesInstance?.approval}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="leaves.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${leavesInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.days}">
				<li class="fieldcontain">
					<span id="days-label" class="property-label"><g:message code="leaves.days.label" default="Days" /></span>
					
						<span class="property-value" aria-labelledby="days-label"><g:fieldValue bean="${leavesInstance}" field="days"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="leaves.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${leavesInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.leaveId}">
				<li class="fieldcontain">
					<span id="leaveId-label" class="property-label"><g:message code="leaves.leaveId.label" default="Leave Id" /></span>
					
						<span class="property-value" aria-labelledby="leaveId-label"><g:fieldValue bean="${leavesInstance}" field="leaveId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.leaveType}">
				<li class="fieldcontain">
					<span id="leaveType-label" class="property-label"><g:message code="leaves.leaveType.label" default="Leave Type" /></span>
					
						<span class="property-value" aria-labelledby="leaveType-label"><g:fieldValue bean="${leavesInstance}" field="leaveType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="leaves.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${leavesInstance}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="leaves.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${leavesInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leavesInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="leaves.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="secUser" action="show" id="${leavesInstance?.user?.id}">${leavesInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${leavesInstance?.id}" />
					<g:link class="edit" action="edit" id="${leavesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
