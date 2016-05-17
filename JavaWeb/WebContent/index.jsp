<%@ page language="java"
		 contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Home</title>
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/home.css" rel="stylesheet">
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
	<script type="text/javascript" src="js/pic.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
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
				<a href="index.jsp"><h1>BJudge</h1></a>
			</div>
			<div class="top-nav">
				<span class="menu"> </span>
				<ul class="nav1">
					<li><a href="index.jsp" class="active">主页</a></li>
					<li><a href="upload.jsp">上传评价</a></li>
					<li><a href="message.jsp">联系我们</a></li>
					<li><a href="my-account.jsp">我的信息</a></li>
					<li><a href="login.jsp">退出</a></li>
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
	<div class="div3">
		<div class="search">
			<form>
				<input type="text" value="Search Here" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search Here';}" required="">
				<input type="submit" value="">
			</form>	
		</div>
	</div>

	<div class="div4">
		<div class="maonimen">
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
		</div>
		<div class="anniu">
			<span class="leftbut"></span>
			<span class="rightbut"></span>
		</div>
	</div>

	<div class="trip">
		<div class="container">
			<h2>软件学院</h2>
			<div class="trip-grids">
				<div class="trip-grid-info one">
					<a href="searchComments.action?path=/rjxy/rjgc/rjtxjg/zlg/comments.txt"><h3>软件体系结构</h3>
					<img src="images/img1.jpg" alt="people"/>
					<p></p>
					<h5>曾立刚</h5>
					</a>
				</div>
			</div>
			<div class="trip-grids ">
				<div class="trip-grid-info two">
					<a href="searchComments.action?path=/rjxy/rjgc/rjtxjg/zhy/comments.txt"><h3>软件体系结构</h3>
					<img src="images/img1.jpg" alt="people"/>
					<p></p>
					<h5>张红延</h5>
				</div>
			</div>
			<div class="trip-grids">
				<div class="trip-grid-info three">
					<a href="searchComments.action?path=/rjxy/rjgc/cxsjjc/mdf/comments.txt"><h3>程序设计基础</h3>
					<img src="images/img1.jpg" alt="people"/>
					<p></p>
					<h5>马迪芳</h5>
				</div>
			</div>
			<div class="trip-grids">
				<div class="trip-grid-info four">
					<a href="searchComments.action?path=/rjxy/rjgc/soa/zlg/comments.txt"><h3>面向服务架构</h3>
					<img src="images/img1.jpg" alt="people"/>
					<p></p>
					<h5>曾立刚</h5>
				</div>
			</div>
			<a href="comment.jsp"><b>更多...</b></a>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="map">
		<img src="images/0.jpg" alt="map"/>
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