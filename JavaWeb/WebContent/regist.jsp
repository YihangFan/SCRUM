<%@ page language="java"
		 contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Al3xis</title>
        
        <!-- The stylesheet -->
        <link rel="stylesheet" href="css/regist.css" />
        
    </head>
    
    <body>

        <div id="main">
        	
        	<h1>Regist</h1>
        	
        	<form class="" method="post" action="login.action">
        		
        		<div class="row email">
	    			<input type="text" id="email" name="username" placeholder="Email" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password1" name="password" placeholder="Password" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password2" placeholder="Password (repeat)" disabled="true" />
        		</div>
        		<p>
        			${requestScope.LoginMessage }
        		</p>
        		<!-- The rotating arrow -->
        		<div class="arrowCap"></div>
        		<div class="arrow"></div>
        		
        		<p class="meterText">Password Meter</p>
        		
        		<input type="submit" value="Login" />
        		
        	</form>
        </div>
        
        <footer>
            <a href="regist.jsp" class="al3xis"><u>Have Account? Login!</u></a>
        </footer>
        
        <!-- JavaScript includes - jQuery, the complexify plugin and our own script.js -->
		<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
		<script src="js/regist.js"></script>
		     
    </body>
</html>