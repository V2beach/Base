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
		●片　　名  鸡皮疙瘩2：闹鬼万圣节 / 书中自有魔怪谷2： 翻生万圣节(港) / 毛骨悚然2 <br />
		●产　　地  美国 <br />
		●类　　别  喜剧 / 恐怖 / 奇幻 / 冒险 <br />
		●语　　言  英语 <br />
		●上映日期  2018-10-12(美国) <br />
		●IMDb评分  5.7/10 from 6370 users <br />
		●豆瓣评分  5.3/10 from 1102 users <br />
		●片　　长  90分钟 <br />
		●导　　演  阿里·桑德尔 Ari Sandel <br />
		●主　　演  温迪·麦克伦登-考威 Wendi McLendon-Covey <br />
		●简　　介  《鸡皮疙瘩2：闹鬼万圣节》（英语：Goosebumps 2: Haunted Halloween）是一部于2018年上映的美国恐怖喜剧片，由阿里·桑德尔执导，罗布·李伯编剧。电影改编自R·L·史汀的儿童文学系列《鸡皮疙瘩》，为2015年电影《鸡皮疙瘩》的续集。由杰瑞米·雷·泰勒、麦迪森·伊瑟曼、杰克·布莱克和郑肯主演。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg90.dydytt.net:8454/阳光电影www.ygdy8.com.鸡皮疙瘩2：闹鬼万圣节.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg90.dydytt.net:8454/阳光电影www.ygdy8.com.鸡皮疙瘩2：闹鬼万圣节.BD.720p.中英双字幕.mkv</a></td>
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