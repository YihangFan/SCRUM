<%@ page language="java" 
	contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
	<head>
	
		<script type="text/javascript">
			function change(img){
				img.src = "${ctx}number.jsp?seed=" + Math.random();
			}
		</script>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>注册</title>
        
			<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
			<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
			<link href="css/login.css" rel='stylesheet' type='text/css' />
			<!--webfonts-->
			<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
			<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
			<!--//webfonts-->
			<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	</head>
<body>
	<script>$(document).ready(function(c) {
		$('.close').on('click', function(c){
			$('.login-form').fadeOut('slow', function(c){
	  			$('.login-form').remove();
			});
		});	  
	});
	</script>
	<center>
	<br /><br />
        <button onclick="window.location.href='login.jsp'">登陆</button>
    </div>
	
	<br /><br /><br />
	
	<div class="login-form">
		<div class="close"> </div>
			<div class="head-info">
				<label class="lbl-1"> </label>
				<label class="lbl-2"> </label>
				<label class="lbl-3"> </label>
			</div>
			<div class="clear"> </div>
			<div class="avtar">
				<img src="images/avtar.png" />
			</div>
			<form action=regist.action method="post">
				<input type="text" name="username" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}" >
				<input type="password" name="password" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
				<input type="password" name="password2" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
					
				<input type="text" name="code" value="验证码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '验证码';}" >
				<img onclick="change(this)" border="5" src="${ctx}number.jsp"/></a><br /><br />
					<h2 style="color:red">${requestScope.RegistMessage }</h2><br />
				<div class="signin">
					<input type="submit" value="注册" >
				</div>
			</form>
	</div>
	</center>
</body>
</html>