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
		<form name="stuSystem" action="${path}/StuMsgServlet.v" style="font-family:Microsoft Yahei;">
			<table>
			<tr style="text-align:center"><td style="text-align:center">学生相关信息录入：<br></td></tr>
			<tr><td>姓名：<input type="text" name="stuname"><br></td></tr>
			<tr><td>学号：<input type="text" name="stucode"><br></td></tr>
			<tr><td>专业：<input type="text" name="stumajor"><br></td></tr>
			<tr><td>GPA：<input type="text" name="stugpa"><br></td></tr>
			<tr><td>密码：<input type="text" name="stupwd"><br></td></tr>
			</table>
			<input 	type="submit" value="提交" >
			<input 	type="reset"  value="重置" >
			<input 	type="button" value="查看账户信息"  name="account_btn"
					onclick="javascript:document.stuSystem.action='${path}/UserMsgServlet.v';
							document.stuSystem.submit();">
			<input 	type="button" value="查看系统内学生信息"  name="account_btn"
					onclick="javascript:document.stuSystem.action='${path}/ShowMsgServlet.v';
							document.stuSystem.submit();">
		</form>
		</div>
		</div>
	</div>
	
</body>
</html>