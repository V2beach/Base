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
		
		<%
			MovieListDao movieListDao = new MovieListDao();
			String moviename = (String)request.getSession().getAttribute("movienameOfReview"); 
		%>
		
		<h1 style="text-align:justify;">
			<center>电影「<%=moviename%>」的评论</center>
		</h1>
		<center><table>
			<tr>
				<td>评论编号</td> <td>电影名</td> <td>昵称：</td> <td>评论内容</td> <td>用户打分</td>
			</tr>
			<tr>
				<td>--------------------------</td> <td>--------------------------</td> <td>--------------------------</td> <td>--------------------------</td> <td>--------------------------</td>
			</tr>
		<%	
			Movie_Review movie_Review = null;
			Set<Movie_Review> movie_Reviews = (Set<Movie_Review>)request.getSession().getAttribute("ReviewsOfOneMovie");
			Iterator<Movie_Review> it = movie_Reviews.iterator();
			String usernickname = "null";
			while (it.hasNext()) {
				movie_Review = it.next();
				usernickname = movieListDao.getUsername(movie_Review.getUserid());
		%>
			<tr>
				<td><%=movie_Review.getReviewid()%></td> <td><%=moviename%></td> <td><%=usernickname%></td>
				<td><%=movie_Review.getContent()%></td> <td><%=movie_Review.getScore()%></td>
			</tr>
		<%			
			}
		%>
		</table></center>
		</div>
		</div>
	</div>
	
</body>
</html>