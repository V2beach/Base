<%@ page language="java" import="java.util.*, cn.v2beach.model.*, cn.v2beach.dbhelper.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
	<style> 
		body {background-image:url('${imgPath}/Wallpaper/memphis-colorful.png');} 
	</style>
</head>

<body>
	<%@include file="Movie_Template.jsp"%>
	<div class="movie_center_log">
		<div style="border-style:outset;color:#1496bb">
		<div style="color:black">
		<h1 style="text-align:justify;">
			<center>请注意措辞</center>
		</h1>
		<center>
			<form name="addmovieSystem" action="${path}/addreview.v" style="font-family:Microsoft Yahei;">
				<table>
				<tr><td>电影id：</td><td><input type="text" name="movieid"><br></td></tr>
				<tr><td>影评内容：</td><td><input type="text" name="content"><br></td></tr>
				<tr><td>电影在您心目中的分数：</td><td><input type="text" name="score"><br></td></tr>
				</table>
				<center><strong>注：电影id可以从所有电影页面查看电影编号。</strong></center>
				<input 	type="submit" value="提交" >
				<input 	type="reset"  value="重置" >
			</form>
		</center>
		</div>
		</div>
	</div>
	
</body>
</html>