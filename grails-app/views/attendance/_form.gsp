<%@ page import="employeelms.Attendance" %>



<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'attendanceDate', 'error')} required">
	<label for="attendanceDate">
		<g:message code="attendance.attendanceDate.label" default="Attendance Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="attendanceDate" precision="day"  value="${attendanceInstance?.attendanceDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'attendanceDay', 'error')} ">
	<label for="attendanceDay">
		<g:message code="attendance.attendanceDay.label" default="Attendance Day" />
		
	</label>
	<g:textField name="attendanceDay" value="${attendanceInstance?.attendanceDay}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'attendanceID', 'error')} required">
	<label for="attendanceID">
		<g:message code="attendance.attendanceID.label" default="Attendance ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="attendanceID" type="number" value="${attendanceInstance.attendanceID}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="attendance.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${employeelms.Employee.list()}" optionKey="id" required="" value="${attendanceInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="attendance.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hours" type="number" value="${attendanceInstance.hours}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'overtime', 'error')} required">
	<label for="overtime">
		<g:message code="attendance.overtime.label" default="Overtime" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="overtime" type="number" value="${attendanceInstance.overtime}" required=""/>
</div>

