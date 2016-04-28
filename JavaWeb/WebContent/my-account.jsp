<%@ page language="java"
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8" 
    	 import="team.javaweb.service.EditInfo"	%>
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

			function editName(){
				document.getElementById("getName").style.visibility = "hidden";
				document.getElementById("name").type = "text";
				document.getElementById("name").value = "";
			}
			function editSex(){
				document.getElementById("getSex").style.visibility = "hidden";
				document.getElementById("sex").style.visibility = "visible";
			}
			function editSchool(){
				document.getElementById("getSchool").style.visibility = "hidden";
				document.getElementById("school").type = "text";
				document.getElementById("school").value = "";
			}
			function editMajor(){
				document.getElementById("getMajor").style.visibility = "hidden";
				document.getElementById("major").type = "text";
				document.getElementById("major").value = "";
			}
			function editId(){
				document.getElementById("getId").style.visibility = "hidden";
				document.getElementById("id").type = "text";
				document.getElementById("id").value = "";
			}
			function editPhone(){
				document.getElementById("getPhone").style.visibility = "hidden";
				document.getElementById("phone").type = "text";
				document.getElementById("phone").value = "";
			}
			function editBirth(){
				document.getElementById("getBirth").style.visibility = "hidden";
				document.getElementById("birth").type = "text";
				document.getElementById("birth").value = "";
			}
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
					<li><a href="login.jsp">Exit!</a></li>
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
	<%	EditInfo edit = new EditInfo();
		edit.queryInfo(); %>
	<div class="login">
		<div class="container">
			<div class="col-md-6 register">
				<h3>Complete Your Info</h3><br />
				
				<form action="info.action?username=<%=	(String)session.getAttribute("User")	%>" method="post">
					<table>
					<tr>
					<td height="93px">
					<lable>Name :</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getName"><%=	(String)session.getAttribute("Name")	%>
					<img src="images/edit.jpg" onclick="editName()"></b>
					<input id="name" type="hidden" required="" name="Name" value="<%=	(String)session.getAttribute("Name")	%>"/>
					</td>
					</tr>
					
					<tr>
					<td height="93px">
					<br /><lable>Sex :</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getSex"><%=	(String)session.getAttribute("Sex")	%>
					<img src="images/edit.jpg" onclick="editSex()"></b>
					<select id="sex" name="sex" name="sex" style="visibility:hidden">
						<option value="Man">Man</option>
						<option value="Woman">Woman</option>
					</select>
					</td>
					</tr>
					
					<tr>
					<td height="93px">
					<br /><lable>School :</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getSchool"><%=	(String)session.getAttribute("School")	%>
					<img src="images/edit.jpg" onclick="editSchool()"></b>
					<input id="school" type="hidden" required="" name="School" value="<%=	(String)session.getAttribute("School")	%>">
					</td>
					</tr>
					
					<tr>
					<td height="93px">
					<br /><lable>Major :</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getMajor"><%=	(String)session.getAttribute("Major")	%>
					<img src="images/edit.jpg" onclick="editMajor()"></b>
					<input id="major" type="hidden" required="" name="Major" value="<%=	(String)session.getAttribute("Major")	%>">
					</td>
					</tr>
					
					<tr>
					<td height="93px">
					<br /><lable>Student ID (6-15数字):</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getId"><%=	(String)session.getAttribute("ID")	%>
					<img src="images/edit.jpg" onclick="editId()"></b>
					<input id="id" type="hidden" required="" name="ID" value="<%=	(String)session.getAttribute("ID")	%>">
					</td>
					</tr>
					
					<tr>
					<td height="93px">
					<br /><lable>Phone Number (6-15数字) :</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getPhone"><%=	(String)session.getAttribute("Phone")	%>
					<img src="images/edit.jpg" onclick="editPhone()"></b>
					<input id="phone" type="hidden" required="" name="Phone" value="<%=	(String)session.getAttribute("Phone")	%>">
					</td>
					</tr>
					
					<tr>
					<td height="93px">
					<br /><lable>Birthplace :</lable>
					</td>
					<td>
					<b style="font-size:24px" id="getBirth"><%=	(String)session.getAttribute("Birthplace")	%>
					<img src="images/edit.jpg" onclick="editBirth()"></b>
					<input id="birth" type="hidden" required="" name="Birthplace" value="<%=	(String)session.getAttribute("Birthplace")	%>">
					</td>
					</tr>

					<tr>
					<td>
					<input type="submit" value="Submit">
					</td>
					<td>
					<h4 style="color:red"> ${requestScope.EditInfoMessage }</h4>
					</td>
					</tr>
					</table>
				</form>
			</div>
			<div class="col-md-6 register">
				<h3>Login Information</h3>
				<form action="infoedit.action?username=<%=	(String)session.getAttribute("User")	%>" method="post">
					<lable>LoginName :</lable>
					<input type="text" required="" name="LoginName">
					<lable>Password :</lable>
					<input type="password" name="Password" value="">
					<h4 style="color:red">${requestScope.EditLoginMessage }</h4><br />
					<input type="submit" value="Submit">
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