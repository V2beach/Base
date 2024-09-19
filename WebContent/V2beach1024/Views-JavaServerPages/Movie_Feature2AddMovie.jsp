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
			<center>确保填入准确信息后提交</center>
		</h1>
		<center>
			<form name="addmovieSystem" action="${path}/addmovie.v" style="font-family:Microsoft Yahei;">
				<table>
				<tr style="text-align:center"><td style="text-align:center">添加新电影<br></td></tr>
				<tr><td>电影名：<input type="text" name="moviename"><br></td></tr>
				</table>
				<input 	type="submit" value="提交" >
				<input 	type="reset"  value="重置" >
			</form>
		</center>
		</div>
		</div>
	</div>
	
</body>
</html>