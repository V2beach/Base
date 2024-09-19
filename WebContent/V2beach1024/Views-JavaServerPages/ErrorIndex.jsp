<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
</head>

<body>
	<%@include file="Template.jsp"%>
	<div class="center_log">
		<div style="border-style:outset;color:#1496bb ;">
			<div style="color:black;">
			<form name="input" action="${path}/LoginServlet.v" method="post">
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
    			<a href="Signup" style="font-family:Gill Sans">Register</a>
	  		</form>
	  			<div class="tooltiptext">
	  				登陆失败，请重新登陆。
	  				（其实密码可以不同时包含数字和大小写字母。）
	  			</div>
	  		</div>
		</div>
	</div>
	
</body>
</html>