<%@ page language="java" import="java.util.*,cn.v2beach.model.*" pageEncoding="UTF-8"%>
<% UserLogin userLogin=(UserLogin)request.getSession().getAttribute("login"); %>
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
			<form action="${path}/UpdateServlet.v">
				<input type="button" value="Update" style="float:right;font-family:Gill Sans"/>
				<table>
				  	<tr>
		  			<td>Nickname:</td>
		  			<td></td>
		  			<td><%=userLogin.getNickname()%><br></td>
		  			</tr>
				  	<tr>
		  			<td>Username:</td>
		  			<td></td>
		  			<td><%=userLogin.getUsername()%><br></td>
		  			</tr>
		  			<tr>
		  			<td>Password:</td>
		  			<td></td>
		  			<td><%=userLogin.getPassword()%><td>
		  			</tr>
		  		</table>
	  			<div class="tooltiptext">
	  				施工中...
	  			</div>
		  	</form>
	  		</div>
		</div>
	</div>
	
</body>
</html>