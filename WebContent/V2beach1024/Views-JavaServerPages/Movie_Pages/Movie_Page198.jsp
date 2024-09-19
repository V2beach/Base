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
		●片　　名  海市蜃楼/风暴 <br />
		●产　　地  西班牙 <br />
		●类　　别  科幻/悬疑/惊悚 <br />
		●语　　言  西班牙语 <br />
		●上映日期  2018-11-30(西班牙)/2019-03-28(中国) <br />
		●IMDb评分  7.6/10 from 3022 users <br />
		●豆瓣评分  7.7/10 from 7379 users <br />
		●片　　长  128分钟 <br />
		●导　　演  奥里奥尔·保罗 Oriol Paulo <br />
		●主　　演  阿德里亚娜·乌加特 Adriana Ugarte <br />
		●简　　介  《看不见的客人》导演、西班牙悬疑大师奥里奥尔·保罗新作悬念升级。25年前一个风暴将至的夜晚，小男孩尼克目睹了邻居杀妻的全过程，被凶手发现的他在逃跑途中被车撞死。尼克死去25年后，幸福的已婚妇女维拉（阿德丽安娜·尤加特 饰）搬进了尼克住过的这所房子。一场和25年前一样的风暴让两段时空交错，惊醒的维拉发现自己竟能与电视机里的尼克跨时空对话。维拉透过电视机试图挽救这个男孩的性命，却引发一系列连锁反应——女儿消失、丈夫和身边的人全都不再认识和相信自己。于是，维拉只能在风暴消失前有限的15小时里，与唯一相信她的莱拉警长（奇诺·达林饰）解开所有谜团… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:8431/阳光电影www.ygdy8.com.海市蜃楼.HD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:8431/阳光电影www.ygdy8.com.海市蜃楼.HD.720p.中英双字幕.mkv</a></td>
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