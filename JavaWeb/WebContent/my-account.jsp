<%@ page language="java"
		 contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>My-account</title>
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<!--web-font-->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Oleo+Script:400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Karma:400,300' rel='stylesheet' type='text/css'>
	<!--//web-font-->
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Viatges Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script src="http://ajax.useso.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- //Custom Theme files -->
	<!-- js -->
	<script src="js/jquery.min.js"></script>
	<script src="js/modernizr.custom.js"></script>
	<!-- //js -->	
	<!-- start-smoth-scrolling-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!--//end-smoth-scrolling-->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><h1>BJudge</h1></a>
			</div>
			<div class="top-nav">
				<span class="menu"> </span>
				<ul class="nav1">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="upload-photo.jsp">Upload Judge</a></li>
					<li><a href="message.jsp" >Message</a></li>
					<li><a href="my-account.jsp" class="active">My account</a></li>
				</ul>
				<!-- script-for-menu -->
				 <script>
				   $( "span.menu" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>
				<!-- /script-for-menu -->
			</div>
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--//header-->
	<div class="login">
		<div class="container">
			<div class="col-md-6 register">
				<h3>Complete Your Info</h3>
				<form action="info.action" method="post">
					<lable>Name :</lable>
					<input type="text" required="" name="Name">
					<lable>Sex :</lable><br />
					<select name="sex" name="sex">
						<option value="Man">Man</option>
						<option value="Woman">Woman</option>
					</select><br /><br />
					<lable>School :</lable>
					<input type="text" required="" name="School">
					<lable>Major :</lable>
					<input type="text" required="" name="Major">
					<lable>Student ID :</lable>
					<input type="text" required="" name="ID">
					<lable>Phone Number :</lable>
					<input type="text" required="" name="Phone">
					<lable>Birthplace :</lable>
					<input type="text" required="" name="Birthplace">
					
					<input type="submit" value="Submit">
				</form>
			</div>
			<div class="col-md-6 login-info">
				<h3>Login Form</h3>
				<form>
					<lable>Username :</lable>
					<input type="email" value="">
					<lable>Password :</lable>
					<input type="password" value="">
					<lable>Remember me</lable><input type="checkbox">
					<input type="submit" value="Login">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });	
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->	
</body>
</html>	