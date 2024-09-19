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
		●片　　名  拉普拉斯的魔女 / Laplace's Witch <br />
		●产　　地  日本 <br />
		●类　　别  剧情 / 悬疑 <br />
		●语　　言  日语 <br />
		●上映日期  2018-05-04(日本) <br />
		●IMDb评分  5.8/10 from 130 users <br />
		●豆瓣评分  5.6/10 from 1881 users <br />
		●片　　长  115分钟 <br />
		●导　　演  三池崇史 Takashi Miike <br />
		●主　　演  樱井翔 Sh? Sakurai <br />
		●简　　介  改编自东野圭吾执笔第30周年，创作的第80部同名小说。故事起源于一起凶杀案，在两处不同的温泉都发现了不明尸体。化学专家青江教授（樱井翔饰）确认为意外死亡，但警官中冈怀疑是其中一位死者的年轻妻子为了骗取保险金而策划的杀人事件。就在此时，青江遇到了一位年轻女子——圆华（广濑铃饰）以及他的青梅竹马——谦人（福士苍汰饰），随之而来的还有接二连三发生的不明超自然现象。这一切到底是意外？还是谋杀？众多的谜团又将如何解开？ <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:8363/阳光电影www.ygdy8.com.拉普拉斯的魔女.BD.720p.日语中字.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:8363/阳光电影www.ygdy8.com.拉普拉斯的魔女.BD.720p.日语中字.mkv</a></td>
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