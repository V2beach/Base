<%@ page language="java" import="java.util.*,cn.v2beach.model.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<% 
	UserLogin userLogin=(UserLogin)request.getSession().getAttribute("login"); 
	if (userLogin==null) {
		userLogin=new UserLogin();
		userLogin.setId(-1);
		userLogin.setNickname("NULL");
		userLogin.setUsername("NULL");
		userLogin.setPassword("NULL");
		userLogin.setAuthority("NULL");
	}
%>
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
	    .help-tip{position:absolute;top:18px;right:18px;text-align:center;background-color:#BCDBEA;border-radius:50%;width:24px;height:24px;font-size:14px;line-height:26px;cursor:default}
		.help-tip:before{content:'?';font-weight:bold;color:#fff;}
		.help-tip:hover p{display:block;transform-origin:100% 0%;-webkit-animation:fadeIn 0.3s ease-in-out;animation:fadeIn 0.3s ease-in-out;}
		.help-tip p{display:none;text-align:left;background-color:#1E2021;padding:20px;width:100px;position:absolute;border-radius:3px;box-shadow:1px 1px 1px rgba(0, 0, 0, 0.2);right:-4px;color:#FFF;font-size:13px;line-height:1.4;}
		.help-tip p:before{position:absolute;content:'';width:0;height:0;border:6px solid transparent;border-bottom-color:#1E2021;right:10px;top:-12px;}
		.help-tip p:after{width:100%;height:40px;content:'';position:absolute;top:-40px;left:0;}
		
		@-webkit-keyframes fadeIn {
			0% { 
				opacity:0; 
				transform:scale(0.6);
			}
		
			100% {
				opacity:100%;
				transform:scale(1);
			}
		}
		
		@keyframes fadeIn {
			0% { opacity:0; }
			100% { opacity:100%; }
		}
	</style>
</head>

<body>
	<%@include file="Movie_Template.jsp"%>
	
	<div class="container_new2simple">
		<div class="container_beach">
			<img src="${imgPath}/SthElse/Gakki.png" height=300px width=200px>
		</div>
		<div class="container_v2">
			<div class="container_title">
				账户信息
			</div>
			<div class="container_movietext" style="font-family:verdana">
				<div style="border-style:outset;color:#1496bb ;">
					<div style="color:black;">
						<input type="button" value="Update" style="float:right;font-family:Gill Sans;font-size:20px"/>
						<table>
							<tr>
								<td>账户id：</td> <td>用户名：</td> <td>昵称：</td>
							</tr>
							<tr>
								<td><%=userLogin.getId()%></td> <td><%=userLogin.getUsername()%></td> <td><%=userLogin.getNickname()%></td>
							</tr>
							<tr>
								<td>---------------------------</td> <td>---------------------------</td> <td>---------------------------</td>
							</tr>
							<tr>
								<td>账户密码：</td> <td>账户身份：</td>
							</tr>
							<tr>
								<td><%=userLogin.getPassword()%></td> <td><%=userLogin.getAuthority()%></td>
							</tr>
				  		</table>
			  			<div class="tooltiptext">
			  				施工中...
			  			</div>
			  		</div>
				</div>
			</div>
		</div>
		<div class="container_beachdemo">
			<img src="${imgPath}/SthElse/Laopo.png" height=300px width=200px>
		</div>
		<div class="container_v2demo">
			<div class="container_title">
				影评
				<div class="container_moviedate">
				<ul>
					<li>2019.5.23</li>
				</ul>
				</div>
			</div>
			<div class="container_movietext2" style="font-family:verdana">
				<c:set var="review" value="在电影《小丑》中：<br>
				吊诡的是片中放了一段卓别林的影像，同样是讲个人在冰冷的社会机器面前是如何渺小和不堪一击，但格局和视野却高下立判。本片在姿态上的某种语焉不详给人一种穷途末路感，但这并非是小丑本身的穷途或者病态社会的末路，而是表达者如何清楚地为我们描述诉求，纪录现象并一点点靠近真实这一层面上的穷途末路。我们真的就剩下这样一种讲故事的方式了吗？难道我们看到的这些就是暴力的真正来源和出路吗？电影在进行到一半的时候就已经接近夭折了，人物的挣扎苦痛，傲慢和愤怒都越来越往一种失控和不可知的状态发展，而我们本该有的反思和审视却一步步被割裂和抛弃。让人啧啧称赞的表演并不是什么加分项，它只会更加让人觉得演员和这个角色本身成为了无脑谩骂和嗜血狂欢下的祭品。"
				/>
				<c:if test="${fn:length(review) > 233}">${fn:substring(review, 0, 233)}...</c:if>
    			<c:if test="${fn:length(review) <= 233}">${review}</c:if>
			</div>
		</div>
		<div class="container_beach233">
			<img src="${imgPath}/SthElse/Pixiv.png" height=300px width=200px>
		</div>
		<div class="container_v233">
			<div class="container_title">
				消息
				<div class="container_moviedate">
				<ul>
					<li>2019.11.5</li>
				</ul>
				</div>
			</div>
			<div class="container_movietext2" style="font-family:verdana">
				用户张三对用户老王说：<br>
					Come and have some fun, boy.
			</div>
		</div>
		<div class="container_beach2simple">
			<img src="${imgPath}/SthElse/Pixiv_1.jpg" height=300px width=200px>
		</div>
		<div class="container_v2simple">
			<div class="help-tip">
			<p>Pay 9.9￥ <br>to become VIP!
				<br>
				<br>
				<img src="${imgPath}/SthElse/erweima.png" width="100" height="100" right="10px"/></p>
			</div>
			<div class="container_title">
				VIP
			</div>
			<div class="container_movietext" style="font-family:verdana">
				现在正以略高于游客的用户身份浏览网站，账户拥有的权限包括：<br>
				<p style="font-famliy:Microsoft Yahei"<strong><center>
				<a href="#" style="border-style:outset;">浏览部分高分电影和部分影评</a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="border-style:outset;">升级为VIP(右上角帮助)</a><!-- src="${imgPath}/SthElse/erweima.png" -->
				<br><br>当您的VIP逐步达到ROOT等级时，将会获得最高的管理员权限：
				</center></strong></p>
				<p style="font-famliy:Microsoft Yahei"><strong><center>
				<a href="#" style="border-style:outset;">查看所有高分电影和影评</a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="border-style:outset;">增添电影</a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="border-style:outset;">删除电影</a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="border-style:outset;">查看所有用户信息</a>
				</center></strong></p>
			</div>
		</div>
	</div>
</body>
</html>