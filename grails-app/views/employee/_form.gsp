<%@ page import="employeelms.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="employee.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="15" required="" value="${employeeInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="employee.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${employeeInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'employeeId', 'error')} required">
	<label for="employeeId">
		<g:message code="employee.employeeId.label" default="Employee Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="employeeId" type="number" value="${employeeInstance.employeeId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'joiningDate', 'error')} ">
	<label for="joiningDate">
		<g:message code="employee.joiningDate.label" default="Joining Date" />
		
	</label>
	<g:datePicker name="joiningDate" precision="day"  value="${employeeInstance?.joiningDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'primaryRole', 'error')} ">
	<label for="primaryRole">
		<g:message code="employee.primaryRole.label" default="Primary Role" />
		
	</label>
	<g:textField name="primaryRole" value="${employeeInstance?.primaryRole}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'function', 'error')} ">
	<label for="function">
		<g:message code="employee.function.label" default="Function" />
		
	</label>
	<g:textField name="function" value="${employeeInstance?.function}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="employee.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${employeeInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="employee.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${employeeInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'attendance', 'error')} ">
	<label for="attendance">
		<g:message code="employee.attendance.label" default="Attendance" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.attendance?}" var="a">
    <li><g:link controller="attendance" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="attendance" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'attendance.label', default: 'Attendance')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'basicPay', 'error')} required">
	<label for="basicPay">
		<g:message code="employee.basicPay.label" default="Basic Pay" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="basicPay" value="${fieldValue(bean: employeeInstance, field: 'basicPay')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'groupName', 'error')} ">
	<label for="groupName">
		<g:message code="employee.groupName.label" default="Group Name" />
		
	</label>
	<g:textField name="groupName" value="${employeeInstance?.groupName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'leaves', 'error')} ">
	<label for="leaves">
		<g:message code="employee.leaves.label" default="Leaves" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.leaves?}" var="l">
    <li><g:link controller="leaves" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="leaves" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'leaves.label', default: 'Leaves')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="employee.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${employeeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'organisation', 'error')} ">
	<label for="organisation">
		<g:message code="employee.organisation.label" default="Organisation" />
		
	</label>
	<g:textField name="organisation" value="${employeeInstance?.organisation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="employee.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${employeeInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'totalOvertime', 'error')} required">
	<label for="totalOvertime">
		<g:message code="employee.totalOvertime.label" default="Total Overtime" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalOvertime" type="number" value="${employeeInstance.totalOvertime}" required=""/>
</div>

