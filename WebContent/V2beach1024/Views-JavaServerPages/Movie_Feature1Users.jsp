<%@ page language="java" import="java.util.*, cn.v2beach.model.*, cn.v2beach.dbhelper.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
	<style> 
		body {background-image:url('${imgPath}/Wallpaper/memphis-colorful.png');} 
		a:link {
	    color:#000000;
	    text-decoration: none;
	    }
	    a:visited {
	    color:#000000;
	    text-decoration:none;
	    }
	    a:hover {
	    color:#FF0000;
	    text-decoration:none;
	    }
	    a:active {
	    color:#FF0000;
	    text-decoration:none;
	    }
	</style>
</head>

<body>
	<%@include file="Movie_Template.jsp"%>
	<div class="movie_center_log">
		<div style="border-style:outset;color:#1496bb">
		<div style="color:black">
		<h1 style="text-align:justify;">
			<center>截止目前本站注册的全部用户</center>
		</h1>
		<center><table>
			<tr>
				<td>账户id：</td> <td>用户名：</td> <td>昵称：</td> <td>账户身份：</td>
			</tr>
			<tr>
				<td>--------------------------</td> <td>--------------------------</td> <td>--------------------------</td> <td>--------------------------</td>
			</tr>
		<% 	
			MovieListDao movieListDao = new MovieListDao();
			Set<UserLogin> userLogins = (Set<UserLogin>)request.getSession().getAttribute("userLogins"); 
			UserLogin userLogin = null;
			if (userLogins==null) {
				userLogin=new UserLogin();
				userLogin.setId(-1);
				userLogin.setNickname("NULL");
				userLogin.setUsername("NULL");
				userLogin.setPassword("NULL");
				userLogin.setAuthority("NULL");
		%>
			<tr>
				<td><%=userLogin.getId()%></td> <td><%=userLogin.getUsername()%></td> <td><%=userLogin.getNickname()%></td> <td><%=userLogin.getAuthority()%></td>
			</tr>
		<%
			}
			else{
				Iterator<UserLogin> it = userLogins.iterator();
				while (it.hasNext()) {
					userLogin = it.next();
		%>
			<tr>
				<td><%=userLogin.getId()%></td> <td><%=userLogin.getUsername()%></td> <td><%=userLogin.getNickname()%></td> <td><%=userLogin.getAuthority()%></td>
			</tr>
		<%			
				}
			}
		%>
		</table></center>
		</div>
		</div>
	</div>
	
</body>
</html>