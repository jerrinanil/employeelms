<%@ page import="employeelms.SecUser" %>



<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="secUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${secUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="secUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${secUserInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="secUser.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${secUserInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'employeeId', 'error')} required">
	<label for="employeeId">
		<g:message code="secUser.employeeId.label" default="Employee Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="employeeId" type="number" value="${secUserInstance.employeeId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="secUser.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${secUserInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'joiningDate', 'error')} ">
	<label for="joiningDate">
		<g:message code="secUser.joiningDate.label" default="Joining Date" />
		
	</label>
	<g:datePicker name="joiningDate" precision="day"  value="${secUserInstance?.joiningDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'basicPay', 'error')} ">
	<label for="basicPay">
		<g:message code="secUser.basicPay.label" default="Basic Pay" />
		
	</label>
	<g:field name="basicPay" value="${fieldValue(bean: secUserInstance, field: 'basicPay')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'totalOvertime', 'error')} required">
	<label for="totalOvertime">
		<g:message code="secUser.totalOvertime.label" default="Total Overtime" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalOvertime" type="number" value="${secUserInstance.totalOvertime}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'primaryRole', 'error')} ">
	<label for="primaryRole">
		<g:message code="secUser.primaryRole.label" default="Primary Role" />
		
	</label>
	<g:textField name="primaryRole" value="${secUserInstance?.primaryRole}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'function', 'error')} ">
	<label for="function">
		<g:message code="secUser.function.label" default="Function" />
		
	</label>
	<g:textField name="function" value="${secUserInstance?.function}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="secUser.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${secUserInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="secUser.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${secUserInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="secUser.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${secUserInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="secUser.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${secUserInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'attendance', 'error')} ">
	<label for="attendance">
		<g:message code="secUser.attendance.label" default="Attendance" />
		
	</label>
	<g:select name="attendance" from="${employeelms.Attendance.list()}" multiple="multiple" optionKey="id" size="5" value="${secUserInstance?.attendance*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="secUser.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${secUserInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'leaves', 'error')} ">
	<label for="leaves">
		<g:message code="secUser.leaves.label" default="Leaves" />
		
	</label>
	<g:select name="leaves" from="${employeelms.Leaves.list()}" multiple="multiple" optionKey="id" size="5" value="${secUserInstance?.leaves*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="secUser.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${secUserInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="secUser.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${secUserInstance?.passwordExpired}" />
</div>

