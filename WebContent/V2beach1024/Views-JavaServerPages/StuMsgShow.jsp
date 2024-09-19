<%@ page language="java" import="java.util.*,cn.v2beach.dev.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
</head>

<body>
	<%@include file="Template.jsp"%>
	<div class="center_msg">
		<div style="border-style:outset;color:#1496bb">
		<div style="color:black">
		<form name="stuSystem" action="${path}/ShowMsgServlet.v" style="font-family:Microsoft Yahei;">
			<table style="text-align:center" border="1" cellspacing="0" >
				<tr>
					<td>姓名</td>
					<td>学号</td>
					<td>专业</td>
					<td>绩点</td>
					<td>密码</td>
				</tr>
				<%
					Student stu=null; String msg=null;
					Set<Student> stuSet=(Set<Student>)request.getSession().getAttribute("stuSet");
					Iterator<Student> it=stuSet.iterator();
					while (it.hasNext()){
						stu=it.next();
				%>
					<tr>
						<td><%=stu.getStuname()%></td>
						<td><%=stu.getStucode()%></td>
						<td><%=stu.getStumajor()%></td>
						<td><%=stu.getStugpa()%></td>
						<td><%=stu.getStupwd()%></td>
					</tr>
				<%
					}
				%>
			</table>
			<input type="radio" name="choice" value="code"/>学号
			<input type="radio"	name="choice" value="name"/>姓名
			<input type="radio"	name="choice" value="gpa" />绩点
			<input type="submit" value="排序" />
			<input 	type="button" value="返回"  name="account_btn" id="gpa"
					onclick="javascript:document.stuSystem.action='System.v';
							document.stuSystem.submit();">
		</form>
		</div>
		</div>
	</div>
	
</body>
</html>