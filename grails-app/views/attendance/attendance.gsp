
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}"/>

<!-- Custom Theme files -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"/>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}"/>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'stylesheet1.css')}"/>

<link rel="stylesheet" href="${resource(dir: 'js', file: 'bootstrap.min.js')}"/>

<link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery.metisMenu.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery.slimscroll.min.js')}"/>

  



<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'custom.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'screenfull.js')}"/>



			
			<link rel="stylesheet" href="${resource(dir: 'css', file: 'clndr.css')}"/>
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'underscore-min.js')}"/>
			
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'clndr.js')}"/>
			<link rel="stylesheet" href="${resource(dir: 'js', file: 'site.js')}"/>
			
			
			
			

<link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.css')}"/>
<link media='print' rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.print.css')}"/>
<link rel="stylesheet" href="${resource(dir: 'lib', file: 'moment.min.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'lib', file: 'jquery.min.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'fullcalendar.min.js')}"/>

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

<!--pie-chart--->
<script src="js/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#3bb2d0',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#fbb03b',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ed6498',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

           
        });

    </script>
	<script>

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: '2016-01-12',
			selectable: true,
			selectHelper: true,
			select: function(start, end) {
				var title = prompt('Event Title:');
				var eventData;
				if (title) {
					eventData = {
						title: title,
						start: start,
						end: end
					};
					$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				}
				$('#calendar').fullCalendar('unselect');
			},
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2016-01-01'
				},
				{
					title: 'Long Event',
					start: '2016-01-07',
					end: '2016-01-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-01-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-01-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2016-01-11',
					end: '2016-01-13'
				},
				{
					title: 'Meeting',
					start: '2016-01-12T10:30:00',
					end: '2016-01-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2016-01-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2016-01-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2016-01-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2016-01-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2016-01-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-01-28'
				}
			]
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
		                <li><a href="editprofile.html"><i class="fa fa-user" style="color: #ee148f;"></i>Edit Profile</a></li>
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
                        <a href="index.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span  class="nav-label" style="color: #ee148f;">Dashboards</span> </a>
                    </li>
                    <li>
                        <a href="profile.html" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label" style="color: #ee148f;">Profile Page</span> </a>
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
				<span style="color: #ee148f;">Attendance</span>
				</h2>
		    </div>
		<!--//banner-->
 	 <!--faq-->
 	<div class="blank">
	
	<div id='calendar'></div>
	

		<div class="col-md-12">
				<!---start-chart---->
				<div class="col-md-15">
					
			 
			</div>

		   <div  align="center" style="margin-top: 50px;">
		   
	 <button type="button" class="btn btn-lg btn-primary">Proceed</button>
	 
	 <div>
	<!--//faq-->
		<!---->

		</div>
		<div class="clearfix"> </div>
       </div>
     
<!--scrolling js-->
<link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery.nicescroll.js.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'scripts.js')}"/>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
</body>
</html>
