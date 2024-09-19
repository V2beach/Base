<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
	<style type="text/css">
		ul {list-style-image: url("${imgPath}/Icon/icon_calendar.gif");}
	</style>
</head>

<body>
	<%@include file="Template.jsp"%>
	
	<div class="container_new">
		<div class="rightbar" style="display:none">
	        <ul>
	            <li><i class="fas fa-user"></i></li>
	            <li><i class="fas fa-users"></i></li>
	            <li><i class="fas fa-smile"></i></li>
	            <li><i class="fas fa-envelope"></i></li>
	            <li><i class="fas fa-bell"></i></li>
	            <li><i class="fas fa-calendar-alt"></i></li>
	            <li><i class="fas fa-power-off"></i></li>
	        </ul>
	    </div>
		<div class="container_beach">
			<img src="${imgPath}/SthElse/Gakki.png" height=300px width=200px>
		</div>
		<div class="container_v2">
			<div class="container_title">
				电台
				<div class="container_date">
				<ul>
					<li>2019.6.28</li>
				</ul>
				</div>
			</div>
			<div class="container_text" style="font-family:verdana">
				Hello, world.
				<div class="FMradio_music">
				<a href="${path}/FMradio/Model-3/index.jsp">
					<img src="${path}/FMradio/Music.png"
						 alt="Again, s'il vous plaît."
						 height=112px width=291.2px/>
				</a>
				</div>
			</div>
		</div>
		<div class="container_beachdemo">
			<img src="${imgPath}/SthElse/Laopo.png" height=300px width=200px>
		</div>
		<div class="container_v2demo">
			<div class="container_title">
				机器人
				<div class="container_date">
				<ul>
					<li>2019.5.23</li>
				</ul>
				</div>
			</div>
			<div class="container_text" style="font-family:verdana">
				Chat with robot.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrow -> Bullseye. <br><br>
				&nbsp;&nbsp;&nbsp;
				<a href="${path}/Notindex.v" style="text-decoration:none">
					<img src="${imgPath}/Blog/Bot.png"
						 alt="Again, s'il vous plaît."
						 height=70px width=70px/>
				</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${path}/HtmlGames/Arrow/view.html" style="text-decoration:none">
					<img src="${imgPath}/Blog/Arrow.png"
						 alt="Again, s'il vous plaît."
						 height=70px width=70px/>
				</a><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<strong><small>--Update 6.12</small></strong>
				<!-- Chat with yourself -->
				<a href="Robot" style="display:none">
					<img src="${imgPath}/Blog/Bot.png"
						 alt="Again, s'il vous plaît."
						 height=70px width=70px/>
				</a>
			</div>
		</div>
		<div class="container_beach233">
			<img src="${imgPath}/SthElse/Pixiv.png" height=300px width=200px>
		</div>
		<div class="container_v233">
			<div class="container_title">
				电影
				<div class="container_date">
				<ul>
					<li>2019.11.5</li>
				</ul>
				</div>
			</div>
			<div class="container_text" style="font-family:verdana">
				Come and have some fun.<strong><small>&nbsp;--Update 11.12</small></strong>
				<div class="FMradio_music">
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${path}/MovieIndex.v">
					<img src="${imgPath}/Blog/MOVIE.png"
						 alt="Again, s'il vous plaît."
						 height=70px width=200px/>
				</a>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>