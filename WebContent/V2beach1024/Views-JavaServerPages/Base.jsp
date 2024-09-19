<%@ page language="java" 
         import="java.util.*,cn.v2beach.model.*" 
		 pageEncoding="UTF-8"%>
<% 	String friend=null;
	UserLogin userLogin=(UserLogin)request.getSession().getAttribute("login");
	if (request.getSession().getAttribute("friend")==null)
		friend="dear";
	else if (request.getSession().getAttribute("friend").equals("no"))
		friend="stranger";
	else if (request.getSession().getAttribute("friend").equals("yes"))
		friend="my friend";
	if (userLogin==null) response.sendRedirect("Index"); %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
</head>

<body>
	<%@include file="Template.jsp"%>
	<script type="text/javascript" src="${jsPath}/Bg.js"></script>
	
	<div class="center" style="font-family:Microsoft Yahei;">
		施工中...
		Welcome, <%=friend %> <%=userLogin.getNickname() %>.
	</div>
	
	<div>
		
	</div>
	
</body>
</html>