
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
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery.min.js"> </script>
<!-- Mainly scripts -->
<script src="js/jquery.metisMenu.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="css/custom.css" rel="stylesheet">
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
                        <a href="<g:createLink controller="leaves" action="leaves" />" class=" hvr-bounce-to-right"><i class="fa fa-inbox nav_icon"></i> <span class="nav-label" style="color: #ee148f;">Apply for Leave</span> </a>
                    </li>

                
                     
                </ul>
            </div>
      </div>
        </nav>
        <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main" style="height: 800px;">
 
  		<!--banner-->	
		    <div class="banner">
		   
				<h2>
				<a href="index.html" style="color: #ee148f;">Home</a>
				<i class="fa fa-angle-right"></i>
				<span style="color: #ee148f;">Dashboard</span>
				</h2>
		    </div>
		<!--//banner-->
		<!--content-->
		<div class="content-top">
			<div class="col-md-6">
				<div class="weather">
					<div class="weather-top">
						<div class="weather-top-left">
							<div class="degree">
							<figure class="icons">
								<canvas id="partly-cloudy-day" width="64" height="64">
								</canvas>
							</figure>
							<span>37°</span>
							<div class="clearfix"></div>
							</div>
				<script>
							 var icons = new Skycons({"color": "#1ABC9C"}),
								  list  = [
									"clear-night", "partly-cloudy-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
							<p>FRIiiiDAY
								<label>13</label>
								<sup>th</sup>
								AUG
							</p>
						</div>
						<div class="weather-top-right">
							<p><i class="fa fa-map-marker"></i>Virtuoso Consult</p>
							<label>Dubai</label>
						</div>
						<div class="clearfix"> </div>
					</div>
	

				</div>
			</div>
			
			
				<div class="col-md-4 ">
				<div class="content-top-1">
				<div class="col-md-6 top-content">
					<h5>Leave Quota</h5>
					<label>8</label>
				</div>
				<div class="col-md-6 top-content1">	   
					<div id="demo-pie-1" class="pie-title-center" data-percent="50"> <span class="pie-value"></span> </div>
				</div>
				 <div class="clearfix"> </div>
				</div>
				<div class="content-top-1">
				<div class="col-md-6 top-content">
					<h5>Requests Pending</h5>
					<label>10</label>
				</div>
				<div class="col-md-6 top-content1">	   
					<div id="demo-pie-2" class="pie-title-center" data-percent="10"> <span class="pie-value"></span> </div>
				</div>
				 <div class="clearfix"> </div>
				</div>
				<div class="content-top-1">
				<div class="col-md-6 top-content">
					<h5>Other</h5>
					<label>5</label>
				</div>
				<div class="col-md-6 top-content1">	   
					<div id="demo-pie-3" class="pie-title-center" data-percent="5"> <span class="pie-value"></span> </div>
				</div>
				 <div class="clearfix"> </div>
				</div>
			</div>
			 
			
			
 

     
     </div>
	 </div>
	
<!---->
<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="js/bootstrap.min.js"> </script>
</body>
</html>

