<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	ServletContext statistics=request.getSession().getServletContext();
	Integer onlineStatistics=(Integer)statistics.getAttribute("z");
	Integer totalStatistics=(Integer)statistics.getAttribute("totalStatistics");
%>
<!DOCTYPE html>
<html>

	<div>
	<h1 style="text-align:justify;">
		<center>Moive.V2beach.cn</center>
	</h1>
	<ul id="nav">
	<li><a href="${path}/MovieIndexJsp.v">Movies</a></li>
	<li><a href="${path}/Archives.v">GoHome</a></li>
	<li><a href="${path}/InfoYourself.v">YourInfo</a></li>
	</ul>
	
	<div class="footer">
		online:<%=onlineStatistics%> &nbsp; total:<%=totalStatistics%>
		<br>Copyright © V2beach | Powered by V2beach
	</div>
	</div>

</html>