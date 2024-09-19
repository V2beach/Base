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
		●片　　名  铁血战士/终极战士：掠夺者(台)/铁血战士4/铁血战士新续集/铁血战士：血兽进化(港) <br />
		●产　　地  美国/加拿大 <br />
		●类　　别  动作/科幻/惊悚/冒险 <br />
		●语　　言  英语/西班牙语 <br />
		●上映日期  2018-09-07(多伦多电影节)/2018-09-14(美国)/2018-10-26(中国) <br />
		●IMDb评分  5.8/10 from 40366 users <br />
		●豆瓣评分  5.1/10 from 19621 users <br />
		●片　　长  107分钟 <br />
		●导　　演  沙恩·布莱克 Shane Black <br />
		●主　　演  波伊德·霍布鲁克 Boyd Holbrook <br />
		●简　　介  一艘宇宙飞船坠落地球，正在执行军事任务的狙击手奎因·麦肯纳（波伊德·霍布鲁克 饰演）恰好遭遇外星人并发生激战，侥幸逃脱的他捡到了外星人的装备并寄回了家想再做他用。传说这种被称为铁血战士的外星人曾数次光临地球，使用各种残忍的手段对人类进行猎杀游戏。而这一次，奎因的儿子罗里收到包裹后意外触发机关，引来了更强大的终极铁血士降临地球。而想要阻止其大开杀戒的却是一群问题士兵和一位生物科学家凯茜·布拉克（奥立薇娅·玛恩 饰演）。事情却远不像他们以为的那样简单，一场铁血、终极铁血与人类之间的三方猎杀大战正式拉响！ <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:3157/阳光电影www.ygdy8.com.铁血战士.HD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:3157/阳光电影www.ygdy8.com.铁血战士.HD.720p.中英双字幕.mkv</a></td>
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