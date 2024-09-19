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
		●片　　名  黑子的篮球·终极一战/黑子的篮球 剧场版/黑子的篮球：最后的游戏/黑子的篮球：终极一战 <br />
		●产　　地  日本 <br />
		●类　　别  动画/运动 <br />
		●语　　言  日语 <br />
		●上映日期  2017-03-18(日本)/2018-08-24(中国) <br />
		●IMDb评分  8.1/10 from 825 users <br />
		●豆瓣评分  6.6/10 from 4594 users <br />
		●片　　长  91分钟 <br />
		●导　　演  多田俊介 Shunsuke Tada <br />
		●主　　演  小野贤章 Kensho Ono <br />
		●简　　介  黑子哲也 及 火神大我 加入了诚凛高中篮球队。相对于有着绝佳球感的火神，黑子却是一名在场上“几乎没有存在感”的球员。但其实，黑子曾是篮球强校帝光国中篮球队的一员，曾与被称为“奇迹时代”的5位天才并肩战斗，以“梦幻的第6人”的称号活跃在篮球场上。“影”与“光”的二人搭档成为校队主力，带领诚凛高中成功打进了冬季选拔赛，并在选拔赛中击败其他拥有“奇迹时代”成员的各路强队，获得了全国冠军。 就在二人升上高二后的那个暑假末尾，由一批18岁左右的美国篮球天才组成的街球队伍“Jabberwock”来访日本，并与日本男篮国家队进行友谊赛。他们以压倒性的实力让日本队惨败，还嘲笑了他们一番。 此举激怒了诚凛高中篮球队教练丽子的父亲景虎。这位曾经的日本篮球国手决定集结黑子与火神，以及“奇迹时代”的其他成员，临时组建梦幻球队“VORPAL SWORDS”，誓言向“Jabberwock”复仇！ 一场最激烈的决战，就此打响! <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7344/阳光电影www.ygdy8.com.黑子的篮球：终极一战.HD.720p.日语中字.mp4">ftp://ygdy8:ygdy8@yg45.dydytt.net:7344/阳光电影www.ygdy8.com.黑子的篮球：终极一战.HD.720p.日语中字.mp4</a></td>
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