<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
	<style> body {background-image:url('${imgPath}/Wallpaper/memphis-colorful.png');} </style>
</head>

<body>
	<%@include file="Template.jsp"%>
	
	<div class="center_log">
		<div style="border-style:outset;color:#1496bb ;"> <!-- 登陆 -->
			<div style="color:black;">
			<form name="input" action="${path}/RegisterServlet.register" method="post">
			<table>
			  	<tr>
	  			<td>Username:<input type="text" name="username"><br></td>
	  			</tr>
	  			<tr>
	  			<td>Password: <input type="password" name="password"><td>
	  			</tr>
	  			<tr>
	  			<td>Nickname: <input type="text" name="nickname"><td><!-- &nbsp;&nbsp;&nbsp; -->
	  			</tr>
	  		</table>
			  	<input type="submit" value="Register">
    			<input type="reset" value="Reset"> 
	  		</form>
	  			<div class="tooltiptext">
	  				30位内任意字符组合。
	  			</div>
	  		</div>
		</div>
	</div>
	
</body>
</html>