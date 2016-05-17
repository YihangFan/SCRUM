 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="team.javaweb.action.CommentAction"
    import="team.javaweb.service.EditInfo"
    import="java.util.List"	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Comments</title>
</head>
<head>
	<title>upload-photo</title>
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<!--web-font-->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Oleo+Script:400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Karma:400,300' rel='stylesheet' type='text/css'>
	<link href="css/main.css" rel="stylesheet" type="text/css" />
	<link href="css/comments.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="css/lanrenzhijia.css" />
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
	<script src="js/modernizr.custom.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript" src="js/lanrenzhijia.js"></script>
	<script type="text/javascript">
	var sorter = new TINY.table.sorter('sorter','table',{
		headclass:'head',
		ascclass:'asc',
		descclass:'desc',
		evenclass:'evenrow',
		oddclass:'oddrow',
		evenselclass:'evenselected',
		oddselclass:'oddselected',
		paginate:true,
		size:10,
		colddid:'columns',
		currentid:'currentpage',
		totalid:'totalpages',
		startingrecid:'startrecord',
		endingrecid:'endrecord',
		totalrecid:'totalrecords',
		hoverid:'selectedrow',
		pageddid:'pagedropdown',
		navid:'tablenav',
		sortcolumn:1,
		sortdir:1,
		sum:[8],
		avg:[6,7,8,9],
		columns:[{index:7, format:'%', decimals:1},{index:8, format:'$', decimals:0}],
		init:true
	});
	<script src="js/jquery.min.js"></script>
    </script>
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
					<li><a href="index.jsp">主页</a></li>
					<li><a href="upload.jsp">上传评价</a></li>
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
	
	<!--upload-->
	<div class="upload">
		<div class="container">
			<div class="container1" id="main" role="main">
			<form id="formlist" action="searchComments.action">
			<input id="path" name="pathInfo" type="hidden"/>
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
            </form>
        	</div>
        </div>
    </div>
    
	<div class="tstyle" id="commentlist">
	<div id="tablewrapper">
	<div id="tableheader">
        <span class="details">
			<div>Records <span id="startrecord"></span>-<span id="endrecord"></span> of 
			<span id="totalrecords"></span></div>
        	<div><a href="javascript:sorter.reset()">reset</a></div>
        </span>
    </div>
	<table cellpadding="0" cellspacing="0" border="0" id="table" class="tinytable">
		<thead>
		<tr>
            <th class="nosort">
			<h3>用户名</h3></th>
			<th><h3>学号</h3></th>
            <th><h3>姓名</h3></th>
            <th><h3>性别</h3></th>
            <th><h3>学校</h3></th>
            <th><h3>上传时间</h3></th>
            <th><h3>评价内容</h3></th>
        </tr>
        </thead>
        <tbody>
		<%	
			CommentAction action = new CommentAction();
			EditInfo edit = new EditInfo();
			edit.queryInfo((String)session.getAttribute("User"));
			int column = action.getColumn((String)session.getAttribute("fileName"));
			for(int i=0;i<column;i++){	%>
		<tr>
			<td>
				<%= action.authorList((String)session.getAttribute("fileName")).get(i)	%>
			</td>
			<td>
				<%= (String)session.getAttribute("ID")	%>
			</td>
			<td>
				<%= (String)session.getAttribute("Name")%>
			</td>
			<td>
				<%= (String)session.getAttribute("Sex")	%>
			</td>
			<td>
				<%= (String)session.getAttribute("School")	%>
			</td>
			<td>
				<%= (String)session.getAttribute("Time")	%>
			</td>
			<td>
				<%= action.commentList((String)session.getAttribute("fileName")).get(i)	%> 
			</td>
		</tr>
		<%	} %>
		</tbody>
	</table>
	<div id="tablefooter">
         <div id="tablenav">
            <div>
                <img src="images/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" />
                <img src="images/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" />
                <img src="images/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" />
                <img src="images/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" />
           </div>
           
           <div>
                <a href="javascript:sorter.showall()">view all</a>
            </div>
        </div>
			<div id="tablelocation">
            	<div>
                    <select onchange="sorter.size(this.value)">
                    <option value="5">5</option>
                        <option value="10" selected="selected">10</option>
                        <option value="20">20</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                    <span>Entries Per Page</span>
                </div>
                <div class="page">Page <span id="currentpage"></span> of <span id="totalpages"></span></div>
            </div>
        </div>
	</div>
	</div>
	<br /><br /><br /><br />
	
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