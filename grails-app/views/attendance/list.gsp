
<%@ page import="employeelms.Attendance" %>
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

<!----->

</head>
<body>
<div id="wrapper">
        <!----->
        <nav class="navbar-default navbar-static-top" role="navigation">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" style="background: #444;" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <h1> <a class="navbar-brand" href="index.html"><span style="color: rgb(22, 147, 207); font-family: Monotype Corsiva;">Virtuso</span><span style="color: rgb(63, 150, 64); font-family: Monotype Corsiva;">Counculting</span></a></h1>         
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
                    <li><a href="editprofile.html"><i class="fa fa-user" style="color: #ee148f;"></i>Edit Profile</a></li>
                    <li><a href="inbox.html"><i class="fa fa-envelope" style="color: #ee148f;"></i>Inbox</a></li>
                    <li><a href="#"><i class="fa fa-envelope" style="color: #ee148f;"></i>Logout</a></li>
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
                        <a href="index.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label" style="color: #ee148f;">Dashboards</span> </a>
                    </li>
                    <li>
                        <a href="profile.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label" style="color: #ee148f;">Profile Page</span> </a>
                    </li>
                    
                    <li>
                        <a href="leave.html" class=" hvr-bounce-to-right"><i class="fa fa-inbox nav_icon"></i> <span class="nav-label" style="color: #ee148f;">Apply for Leave</span> </a>
                    </li>

                <li>
                        <a href="inbox.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label" style="color: #ee148f;">Inbox</span> </a>
                    </li>

                     <li>
                        <a href="leavereport.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label" style="color: #ee148f;">Leave Report</span> </a>
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
				<span style="color: #ee148f;">Leave Report</span>
				</h2>
		    </div>
		<!--//banner-->
 	 <div style="width: 1084px;margin-left: 16px;padding-top: 18px;padding-bottom: 21px;">
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

	