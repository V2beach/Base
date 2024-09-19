<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>小站</title>
	<style> body {background-image:url('<%=path%>/Images/Wallpaper/crossword.png');} </style>
	<link rel="shortcut icon" href="<%=path%>/Images/Icon/Glass.ico"> 
	<link rel="Bookmark" href="<%=path%>/Images/Icon/Glass.ico"> 
	<link href="<%=path%>/V2beach1024/C-StyleSheets/MyStyles.css" rel="stylesheet" type="text/css" >
</head>

<body>
<script type="text/javascript" src="/V2beach1024/JavaScriptSource/Bg.js"></script>
	<div>
	<h1 style="text-align:justify;">
		&nbsp;&nbsp;&nbsp;&nbsp;V2beach.cn
	</h1>
	<ul id="nav">
	<li><a href="Index.v">Home</a></li>
	<li><a href="System.v">System</a></li>
	<li><a href="Testing.v">Testing</a></li>
	<li><a href="Archives.v">Archives</a></li>
	<li><a href="About.v">About</a></li>
	</ul>
	</div>
	<div class="center_log">
		<div style="border-style:outset;color:#1496bb ;">
			<div style="color:black;">
			<form name="input" action="<%=path%>/LoginServlet" method="post">
			<table>
			  	<tr>
				  	<td>Are you my friend?
				  		<input type="radio" name="friend" value="yes">Yes
				  		<input type="radio" name="friend" value="no">No<br>
				  	</td>
			  	</tr>
			  	<tr>
	  			<td>Username:<input type="text" name="username"><br></td>
	  			</tr>
	  			<tr>
	  			<td>Password: <input type="password" name="password"><td>
	  			</tr>
	  		</table>
			  	<input type="submit" value="Submit">
    			<input type="reset" value="Reset"> 
    			<a href="Signup.register" style="font-family:Gill Sans">Register</a>
	  		</form>
	  			<div class="tooltiptext">
	  				密码应同时包含数字和大小写字母。报错点一下submit就好了。
	  			</div>
	  		</div>
		</div>
	</div>
	<div class="footer">
		 Copyright © V2beach | Powered by V2beach
	</div>
</body>
</html>