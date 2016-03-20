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
</head>
<body>

<div class="login">
		<center><h1 style="background-color=#444;"> <a href="index.html"><span ><span style="color: rgb(22, 147, 207); font-family: Monotype Corsiva;">Virtuso</span><span style="color: rgb(63, 150, 64); font-family: Monotype Corsiva;">Counsulting</span></span></a></h1></center>
		<div class="login-bottom">
		
			<center></center><h2 style="color: #EE148F;">Login</h2></center>
			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<div class="col-md-6">
				<div class="login-mail">
				
					<input type="text" class='text_' name='j_username' id='username' placeholder="Email" required="">
					<i class="fa fa-envelope"></i>
				</div>
				<div class="login-mail">
					<input type='password' class='text_' name='j_password' id='password'/>
					<i class="fa fa-lock"></i>
				</div>
				   <a class="news-letter " href="#">
						 <label class="checkbox1"><input type="checkbox" name="checkbox"  ><i> </i><span style="color: #EE148F;">Forget Password </span></label>
					   </a>
					    <label class="checkbox1">
					   
					   <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/><i> </i><span style="font-size:15px;color: #EE148F;"><g:message code="springSecurity.login.remember.me.label"/> </span></label>
				
					
			
			</div>
			
			<div class="col-md-6 login-do">
				<label class="hvr-shutter-in-horizontal login-sub">
					<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
					</label>
					<p style="color: #EE148F;">Do not have an account?</p>
				<a href="signup.html" class="hvr-shutter-in-horizontal" style="color: #EE148F;">Signup</a>
			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div>
	</div>

<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>

<!---->
<!--scrolling js-->
<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/jquery.nicescroll.js.js')}"/>
<link rel="stylesheet" href="${resource(dir: 'js', file: 'js/scripts.js')}"/>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
</body>
</html>