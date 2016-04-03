<%@ page import="employeelms.Leaves" %>



<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'approval', 'error')} ">
	<label for="approval">
		<g:message code="leaves.approval.label" default="Approval" />
		
	</label>
	<g:checkBox name="approval" value="${leavesInstance?.approval}" />
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="leaves.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${leavesInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'days', 'error')} required">
	<label for="days">
		<g:message code="leaves.days.label" default="Days" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="days" type="number" value="${leavesInstance.days}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="leaves.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${leavesInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'leaveId', 'error')} required">
	<label for="leaveId">
		<g:message code="leaves.leaveId.label" default="Leave Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="leaveId" type="number" value="${leavesInstance.leaveId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'leaveType', 'error')} ">
	<label for="leaveType">
		<g:message code="leaves.leaveType.label" default="Leave Type" />
		
	</label>
	<g:textField name="leaveType" value="${leavesInstance?.leaveType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'message', 'error')} ">
	<label for="message">
		<g:message code="leaves.message.label" default="Message" />
		
	</label>
	<g:textField name="message" value="${leavesInstance?.message}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="leaves.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${leavesInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="leaves.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${employeelms.SecUser.list()}" optionKey="id" required="" value="${leavesInstance?.user?.id}" class="many-to-one"/>
</div>

