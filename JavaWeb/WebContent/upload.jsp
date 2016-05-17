<%@ page language="java"
		 contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>upload-judge</title>
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/comments.css" type="text/css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet" type="text/css" />
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
	<script src="http://www.pengyaou.com/jquery-1.4.min.js"></script>
	<!-- //Custom Theme files -->
	<!-- js -->
	<script src="js/jquery.min.js"></script>
	<script src="js/modernizr.custom.js"></script>
	<!-- //js -->	
	<!-- start-smoth-scrolling-->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript" src="js/comments.js"></script>	
	<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});

			var listen = ture;
			
			function ifClick(){
				listen = false;
			}
			
			function edit(){
				if(listen){
					window.onbeforeunload = function(){
						return "确定放弃编辑吗？"; 
					}
				}
			}
	</script>
	<!--//end-smoth-scrolling-->
</head>
<body onload="edit()">
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.jsp"><h1>BJudge</h1></a>
			</div>
			<div class="top-nav">
				<span class="menu"> </span>
				<ul class="nav1">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="upload.jsp" class="active">上传评价</a></li>
					<li><a href="message.jsp" >联系我们</a></li>
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
	<!--upload-->
	<div class="upload">
	<h3 style="color:gray">课程选择:</h3>
		<div id="position" style="text-align: center;color:red">请选择课程</div>
		
		<div class="container">
			<p style="color:red;text-align:center">${requestScope.uploadInfo }</p>
			<div class="container1" id="main" role="main">
           	<ul class="menu">
                <li><a href="#s1" id="name1">学院</a>
                    <ul id="ul1" class="submenu">
                        <li><a href="#" onclick="ruanjian()">软件学院</a></li>
                        <li><a href="#">经管学院</a></li>
                        <li><a href="#">法学院</a></li>
                        <li><a href="#">理学院</a></li>
                    </ul>
                </li>
                <li class="active"><a href="#s2" id="name2">专业</a>
                    <ul id="ul2" class="submenu">

                    </ul>
                </li>
                <li><a href="#" id="name3">课程种类</a>
                    <ul id="ul3" class="submenu">

                    </ul>
                </li>
                <li><a href="#" id="name4">课程名称</a>
                	<ul id="ul4" class="submenu">

                    </ul>
                </li>
                <li><a href="#" id="name5">执教老师</a>
                	<ul id="ul5" class="submenu">

                    </ul>
                </li>
            </ul>
        	</div>
			
			<form action="judge.action">
			<div class="col-md-8">
				<div id="commentlist" class="commentlist">
				<div class="test">
					<input id="path" name="pathInfo" type="hidden"/>
					<div class="title">1.客观题-关于老师:
					</div><br />
					1.老师是否准时到达教室？<br />
					<p>
					<input type="radio" name="ques1" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques1" value="偶尔" />偶尔	&nbsp;
					<input type="radio" name="ques1" value="经常" />经常 &nbsp; 
					</p>
					<br />
					2.老师是否加课，拖堂？<br />
					<p>
					<input type="radio" name="ques2" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques2" value="偶尔" />偶尔 &nbsp;
					<input type="radio" name="ques2" value="经常" />经常 &nbsp;
					</p>
					<br />
					3.老师上课时是否因为个人原因打断课堂（比如频繁的接电话）？<br />
					<p>
					<input type="radio" name="ques3" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques3" value="偶尔" />偶尔 &nbsp;
					<input type="radio" name="ques3" value="经常" />经常  &nbsp;
					</p>
					4.老师上课时是否着装整洁？<br />
					<p>
					<input type="radio" name="ques4" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques4" value="偶尔" />偶尔 &nbsp;
					<input type="radio" name="ques4" value="经常" />经常  &nbsp;
					</p>
					5.老师课下是否跟学生有邮件/QQ/微信上的互动？<br />
					<p>
					<input type="radio" name="ques5" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques5" value="偶尔" />偶尔 &nbsp;
					<input type="radio" name="ques5" value="经常" />经常  &nbsp;
					</p><br />
					
					<div class="title">2.客观题-关于考勤:
					</div><br />
					1.老师是否上课点名回答问题？<br />
					<p>
					<input type="radio" name="ques6" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques6" value="偶尔" />偶尔 &nbsp;
					<input type="radio" name="ques6" value="经常" />经常  &nbsp;
					</p>
					2.老师是否点名？<br />
					<p>
					<input type="radio" name="ques7" value="从不" checked="checked" />从不 &nbsp;
					<input type="radio" name="ques7" value="偶尔" />偶尔 &nbsp;
					<input type="radio" name="ques7" value="经常" />经常  &nbsp;
					</p><br />
					
					<div class="title">3.客观题-关于课程:
					</div><br />
					1.课程的考查严苛程度？（多选）<br />
					<p>
					<input type="radio" name="ques8" value="很水" checked="checked" />很水 &nbsp;
					<input type="radio" name="ques8" value="一般" />一般 &nbsp;
					<input type="radio" name="ques7" value="很严" />很严  &nbsp;
					</p>
					
				</div><br /><br />
         		
         		<div class="test1">
         			<div class="title">4.主观题:
					</div><br />

  				<div class="Main">
    			<div class="Input_Box">
      				<textarea name="judgement" class="Input_text"></textarea>
      				<div class="faceDiv">	</div>
      				<div class="Input_Foot">
      					<a class="imgBtn" href="javascript:void(0);"></a>	
      				</div>
   				</div>
  				</div>
	
				<div class="col-md-7 message">
					<input id="uploadButton" type="submit" value="Upload" onclick="ifClick()">
				</div>
				</div>
				</div>
			</div>
			</form>
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--//upload-->
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