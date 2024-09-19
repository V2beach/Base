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
		●片　　名  天才麻将少女：阿知贺篇 电影版/咲-Saki- 阿知贺篇 真人版 <br />
		●产　　地  日本 <br />
		●类　　别  剧情 <br />
		●语　　言  日语 <br />
		●上映日期  2018-01-20(日本) <br />
		●IMDb评分  6.7/10 from 12 users <br />
		●豆瓣评分  5.0/10 from 207 users <br />
		●片　　长  112分钟 <br />
		●导　　演  小沼雄一 Y?ichi Onuma <br />
		●主　　演  樱田日和 Hiyori Sakurada <br />
		●简　　介  《天才麻将少女阿知贺篇 episode of side-A》是小林立原作、五十岚亚栗作画的漫画作品，故事是《天才麻将少女》的支线剧情，于2011年8月至2013年3月连载。该作以本篇角色原村和小学时代的挚友高鸭稳乃为主角，讲述了稳乃为了与日渐疏远的小和再次对战，与奈良县阿知贺女子学院麻将部的伙伴们向着全国麻将大赛进军的故事。故事背景设定在《天才麻将少女》本篇第二主角原村和曾生活的奈良县，主角校为阿知贺女子学院。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7326/阳光电影www.ygdy8.com.天才麻将少女：阿知贺篇.BD.720p.日语中字.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:7326/阳光电影www.ygdy8.com.天才麻将少女：阿知贺篇.BD.720p.日语中字.mkv</a></td>
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