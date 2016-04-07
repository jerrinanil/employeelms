
<%@ page import="employeelms.Employee" %>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}"/>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"/>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}"/>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'stylesheet1.css')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery.min.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'bootstrap.min.js')}"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery.metisMenu.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery.slimscroll.min.js')}"/>
<script src="js/jquery.min.js"> </script>
<script src="js/bootstrap.min.js"> </script>
  
<!-- Mainly scripts -->
<script src="js/jquery.metisMenu.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'custom.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/screenfull.js')}"/>
<script src="js/custom.js"></script>
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});
			

			
		});
		</script>



</head>
<body>
<div id="wrapper">
      <!----->
        <nav class="navbar-default navbar-static-top" role="navigation">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" style="background: #444;" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <h1 style="background-color=#444;"> <a class="navbar-brand"  href="index.html"><span style="background-color=#444;"><span style="color: rgb(22, 147, 207); font-family: Monotype Corsiva;">Virtuso</span><span style="color: rgb(63, 150, 64); font-family: Monotype Corsiva;">Counsulting</span></span></a></h1>         
			   </div>
			 <div class=" border-bottom">
        	<div class="full-left">
        	  <section class="full-top">
				<button id="toggle"><i class="fa fa-arrows-alt"></i></button>	
			</section>
			<form class=" navbar-left-right">
              <input type="text"  value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
              <input type="submit" value="" class="fa fa-search">
            </form>
            <div class="clearfix"> </div>
           </div>
     
       
            <!-- Brand and toggle get grouped for better mobile display -->
		 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="drop-men" >
		        <ul class=" nav_1">
		           
		    		<li class="dropdown at-drop">
		              
					<li class="dropdown">
		              <a href="#" class="dropdown-toggle dropdown-at" data-toggle="dropdown"><span class=" name-caret" style="color: #ee148f;">User<i class="caret"></i></span><img src="images/wo.jpg"></a>
		              <ul class="dropdown-menu " role="menu">
		                <li><a href="editprofile.html"><i class="fa fa-user"  style="color: #ee148f;"></i>Edit Profile</a></li>
		                <li><a href="#"><i class="fa fa-envelope"  style="color: #ee148f;"></i>Logout</a></li>
		              </ul>
		            </li>
		           
		        </ul>
		     </div><!-- /.navbar-collapse -->
			<div class="clearfix">
       
     </div>
	  
		     <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
        
                    <li>
                        <a href="index.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label"  style="color: #ee148f;">Dashboards</span> </a>
                    </li>
                    <li>
                        <a href="profile.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label "  style="color: #ee148f;">Profile Page</span> </a>
                    </li>
					<li>
                        <a href="attendance.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label" style="color: #ee148f;">Attendance</span> </a>
                    </li>
                    
                    
                    <li>
                        <a href="leave.html" class=" hvr-bounce-to-right"><i class="fa fa-inbox nav_icon"></i> <span class="nav-label" style="color: #ee148f;">Apply for Leave</span> </a>
                    </li>

               
                    
                     
                </ul>
            </div>
      </div>
        </nav>
		 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
 
 	<!--banner-->	
		    <div class="banner">
		    	<h2>
				<a href="index.html" style="color: #ee148f;">Home</a>
				<i class="fa fa-angle-right"></i>
				<span style="color: #ee148f;">Profile</span>
				</h2>
		    </div>
		<!--//banner-->
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${secUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="employee.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${employeeInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="employee.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${employeeInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.employeeId}">
				<li class="fieldcontain">
					<span id="employeeId-label" class="property-label"><g:message code="employee.employeeId.label" default="Employee Id" /></span>
					
						<span class="property-value" aria-labelledby="employeeId-label"><g:fieldValue bean="${employeeInstance}" field="employeeId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.joiningDate}">
				<li class="fieldcontain">
					<span id="joiningDate-label" class="property-label"><g:message code="employee.joiningDate.label" default="Joining Date" /></span>
					
						<span class="property-value" aria-labelledby="joiningDate-label"><g:formatDate date="${employeeInstance?.joiningDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.primaryRole}">
				<li class="fieldcontain">
					<span id="primaryRole-label" class="property-label"><g:message code="employee.primaryRole.label" default="Primary Role" /></span>
					
						<span class="property-value" aria-labelledby="primaryRole-label"><g:fieldValue bean="${employeeInstance}" field="primaryRole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.function}">
				<li class="fieldcontain">
					<span id="function-label" class="property-label"><g:message code="employee.function.label" default="Function" /></span>
					
						<span class="property-value" aria-labelledby="function-label"><g:fieldValue bean="${employeeInstance}" field="function"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="employee.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${employeeInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="employee.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${employeeInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.attendance}">
				<li class="fieldcontain">
					<span id="attendance-label" class="property-label"><g:message code="employee.attendance.label" default="Attendance" /></span>
					
						<g:each in="${employeeInstance.attendance}" var="a">
						<span class="property-value" aria-labelledby="attendance-label"><g:link controller="attendance" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.basicPay}">
				<li class="fieldcontain">
					<span id="basicPay-label" class="property-label"><g:message code="employee.basicPay.label" default="Basic Pay" /></span>
					
						<span class="property-value" aria-labelledby="basicPay-label"><g:fieldValue bean="${employeeInstance}" field="basicPay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.groupName}">
				<li class="fieldcontain">
					<span id="groupName-label" class="property-label"><g:message code="employee.groupName.label" default="Group Name" /></span>
					
						<span class="property-value" aria-labelledby="groupName-label"><g:fieldValue bean="${employeeInstance}" field="groupName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.leaves}">
				<li class="fieldcontain">
					<span id="leaves-label" class="property-label"><g:message code="employee.leaves.label" default="Leaves" /></span>
					
						<g:each in="${employeeInstance.leaves}" var="l">
						<span class="property-value" aria-labelledby="leaves-label"><g:link controller="leaves" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="employee.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${employeeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.organisation}">
				<li class="fieldcontain">
					<span id="organisation-label" class="property-label"><g:message code="employee.organisation.label" default="Organisation" /></span>
					
						<span class="property-value" aria-labelledby="organisation-label"><g:fieldValue bean="${employeeInstance}" field="organisation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="employee.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${employeeInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.totalOvertime}">
				<li class="fieldcontain">
					<span id="totalOvertime-label" class="property-label"><g:message code="employee.totalOvertime.label" default="Total Overtime" /></span>
					
						<span class="property-value" aria-labelledby="totalOvertime-label"><g:fieldValue bean="${employeeInstance}" field="totalOvertime"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="edit" action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
				<link rel="stylesheet" href="css/clndr.css" type="text/css" />
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/underscore-min.js')}"/>
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/moment-2.2.1.js')}"/>
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/clndr.js')}"/>
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/site.js')}"/>
			<script src="js/underscore-min.js" type="text/javascript"></script>
			<script src= "js/moment-2.2.1.js" type="text/javascript"></script>
			<script src="js/clndr.js" type="text/javascript"></script>
			<script src="js/site.js" type="text/javascript"></script>
			</div>

			<!----End Calender -------->

 	
		<!---->

    <div class="clearfix"> </div>
       </div>
     
<!---->
<!--scrolling js-->
<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/jquery.nicescroll.js.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/scripts.js')}"/>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
</body>
</html>

	