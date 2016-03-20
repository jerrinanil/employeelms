<%@ page import="employeelms.Leaves" %>





<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'days', 'error')} required">
	<label for="days">
		<g:message code="leaves.days.label" default="Days" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="days" type="number" value="${leavesInstance.days}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="leaves.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${employeelms.Employee.list()}" optionKey="id" required="" value="${leavesInstance?.employee?.id}" class="many-to-one"/>
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


<div class="fieldcontain ${hasErrors(bean: leavesInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="leaves.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${leavesInstance?.startDate}"  />
</div>

