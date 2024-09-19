<%@ page language="java" import="java.util.*, cn.v2beach.model.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="../Include.jsp"%>
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
	<%@include file="../Movie_Template.jsp"%>
	<div class="moviecenter_log">
		<div>
		<!--Content Start-->
		<span style="FONT-SIZE: 17px"/>
		●片　　名  气球/奇迹热气球(台) <br />
		●产　　地  德国 <br />
		●类　　别  剧情/惊悚/历史 <br />
		●语　　言  德语/英语 <br />
		●上映日期  2018-09-27(德国) <br />
		●IMDb评分  7.8/10 from 1153 users <br />
		●豆瓣评分  8.1/10 from 219 users <br />
		●片　　长  120分钟 <br />
		●导　　演  米夏埃尔·赫尔比希 Michael Herbig <br />
		●主　　演  弗莱德里奇·穆克 Friedrich Mücke <br />
		●简　　介  1979年冷战高峰期，身在东德的冈特（大卫·克劳斯 David Kross 饰）和彼得（弗莱德里奇·穆克 Friedrich Mücke 饰）为了追求自由，用超过两年的时间筹画了一场“惊天大逃亡”：他们用有限的资源，自制了一个巨大的热气球，并打算用它载着家人逃到西德。不料，就在即将越过边境时，热气球却意外坠毁，引来东德秘密警察铺天盖地的调查。在紧迫的时间和严密的侦查之下，他们拼命打造了新的热气球，而在此同时，秘密警察也逐渐锁定了他们，一场分秒必争的绝命逃亡就此展开… <br />
		●影　　评  <a href="${path}/showreviews.v"><strong>「查看影评」</strong></a><br />
		●会　　员  <a href="${path}/AddOneReview.v"><strong>「发表影评」</strong></a><br /><br />
		
		<%	
			UserLogin userlogin = (UserLogin)request.getSession().getAttribute("login");
			String user = "null";
			if (userlogin != null) {
				user = userlogin.getId().toString();//每个用户一个
			}
			String filename = Thread.currentThread().getStackTrace()[1].getFileName();
			request.getSession().setAttribute(user, filename);
			//System.out.println(user + " " + filename);
		%>
		
		<strong><font color="#ff0000"><font size="4">【下载地址】</font></font></strong> <br /><br /><br />
		<strong><font size="4">磁力链点击下载，或复制下面链接下载</font></strong></p>
		<p>&nbsp;</p>
		<p>
		<table style="BORDER-BOTTOM: #cccccc 1px dotted; BORDER-LEFT: #cccccc 1px dotted; TABLE-LAYOUT: fixed; BORDER-TOP: #cccccc 1px dotted; BORDER-RIGHT: #cccccc 1px dotted" border="0" cellspacing="0" cellpadding="6" width="95%" align="center">
		    <tbody>
		        <tr>
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg72.dydytt.net:8356/阳光电影www.ygdy8.com.奇迹热气球.BD.720p.德语中字.mkv">ftp://ygdy8:ygdy8@yg72.dydytt.net:8356/阳光电影www.ygdy8.com.奇迹热气球.BD.720p.德语中字.mkv</a></td>
		        </tr>
		    </tbody>
		</table>
		</p> <br><center></center>
		
		<br>
		<font color=red>下载地址2：<a href="https://www.ygdy8.net/" target="_blank"  title="迅雷电影">点击进入</a> </font >
		&nbsp; &nbsp; <font color=#07519a>温馨提示：如遇迅雷无法下载可换用无限制版尝试用磁力下载!</font>
		
		<BR><BR>
		<font color=red>下载方法：安装软件后，点击即可下载，谢谢大家支持！喜欢本站，请使用Ctrl+D进行添加收藏！</font ><BR>
		
		      <tr>
		        <td colspan="2"><hr color="#CC6600" size="1px" /></td>
		      </tr>
		</tr>
		        <center><a href="http://www.dytt8.net/" target="_blank" ><font color="blue">点击进入：想第一时间下载本站的影片吗？ </font></a></center>
		</div>
	</div>
	
</body>
</html>