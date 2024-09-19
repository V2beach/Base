<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
</head>

<body>
	<%@include file="Template.jsp"%>
	<div class="center_log">
		<div style="border-style:outset;color:#1496bb">
		<div style="color:black">
		<form name="stuSystem" action="System.jsp" style="font-family:Microsoft Yahei;">
			<table>
			<tr style="text-align:center"><td style="text-align:center">录入成功！<br></td></tr>
			</table>
			<input 	type="submit" value="继续录入" ><br>
			<input 	type="button" value="查看账户信息"  name="account_btn"
					onclick="javascript:document.stuSystem.action='${path}/UserMsgServlet.v';
							document.stuSystem.submit();"><br>
			<input 	type="button" value="查看系统内学生信息"  name="account_btn"
					onclick="javascript:document.stuSystem.action='${path}/ShowMsgServlet.v';
							document.stuSystem.submit();"> <!-- How to work? -->
		</form>
		</div>
		</div>
	</div>
	
</body>
</html>