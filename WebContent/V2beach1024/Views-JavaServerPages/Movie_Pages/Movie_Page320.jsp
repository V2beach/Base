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
		●片　　名  邻里的人们/乡亲们/呆货/恶邻布局(台) <br />
		●产　　地  韩国 <br />
		●类　　别  动作/悬疑 <br />
		●语　　言  韩语 <br />
		●上映日期  2018-11-07(韩国) <br />
		●IMDb评分  5.9/10 from 73 users <br />
		●豆瓣评分  5.8/10 from 1367 users <br />
		●片　　长  99分钟 <br />
		●导　　演  林镇秀 Jin-soon Lim <br />
		●主　　演  马东锡 Tong-Seok Ma <br />
		●简　　介  基哲（马东石饰演）被调派到乡下高中担任体育老师并兼任训导主任，不过，基哲一到学校便立刻觉得事有蹊跷，不仅学校职员散发出一股诡谲的气氛，镇上居民也好像隐藏着什么不可告人的秘密。某日，一名女学生失踪了，但大家却默不吭声，仿佛事情从未发生过，只有女学生的朋友宥贞（金赛纶饰），坚信好友遭人绑架，不放弃追查。 女学生消失的证据，正在一点点被抹去，基哲和宥贞这对师生，该如何找出事件背后的骇人真相，救出失踪女学生呢？ <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg90.dydytt.net:8497/阳光电影www.ygdy8.com.邻里的人们.BD.720p.韩语中字.mkv">ftp://ygdy8:ygdy8@yg90.dydytt.net:8497/阳光电影www.ygdy8.com.邻里的人们.BD.720p.韩语中字.mkv</a></td>
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