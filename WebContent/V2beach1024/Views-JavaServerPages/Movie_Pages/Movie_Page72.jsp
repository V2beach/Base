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
		●片　　名  美声/美声人质(港)/美声唱法 <br />
		●产　　地  美国 <br />
		●类　　别  剧情 <br />
		●语　　言  英语 <br />
		●上映日期  2018-09-14(美国) <br />
		●IMDb评分  5.2/10 from 769 users <br />
		●豆瓣评分  5.7/10 from 303 users <br />
		●片　　长  102分钟 <br />
		●导　　演  保罗·韦兹 Paul Weitz <br />
		●主　　演  朱丽安·摩尔 Julianne Moore <br />
		●简　　介  这部扣人心弦的“恐怖片”，在罗克珊要求将乐谱送进官邸之后，开始出现细微变化。“狰狞”的恐怖分子和美妙的意大利歌剧、高雅的艺术和诡秘的政治、冰冷的武器和炽热的崇拜．权贵与贫民、东方富商与西方名伶……所有看似最不协调的音符和最不搭调的人物被搬上了同一舞台，演绎出一场轰轰烈烈的悲喜剧。回荡在舞台上空的，始终是罗克珊那令人渴望亲吻的歌喉，连同无孔不入的人性与爱情，让人们逐渐忘却自己仍然身处在一触即发的火山口，沦为她美声的俘虏…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7354/阳光电影www.ygdy8.com.美声.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:7354/阳光电影www.ygdy8.com.美声.BD.720p.中英双字幕.mkv</a></td>
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