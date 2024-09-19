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
		&nbsp;&nbsp;&nbsp;&nbsp;V2beach.cn
	</h1>
	<ul id="nav">
	<li><a href="Index.index">Home</a></li>
	<li><a href="System.v">System</a></li>
	<li><a href="Testing.v">Testing</a></li>
	<li><a href="Archives.v">Archives</a></li>
	<li><a href="About.v">About</a></li>
	</ul>
	
	<div class="footer">
		online:<%=onlineStatistics%> &nbsp; total:<%=totalStatistics%>
		<br>Copyright © V2beach | Powered by V2beach
	</div>
	</div>

</html>