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
		●片　　名  性别为本 / 以性为本 / 司法女王(港) / 基于性别 <br />
		●产　　地  美国 <br />
		●类　　别  剧情 / 传记 <br />
		●语　　言  英语 <br />
		●上映日期  2018-12-25(美国) <br />
		●IMDb评分  6.7/10 from 8164 users <br />
		●豆瓣评分  7.5/10 from 1278 users <br />
		●片　　长  120分钟 <br />
		●导　　演  米密·莱德 Mimi Leder <br />
		●主　　演  菲丽希缇·琼斯 Felicity Jones <br />
		●简　　介  菲丽西缇·琼斯正商谈出演《以性为本》，饰演传奇女法官鲁丝·巴德·金斯伯格，讲述她职业生涯里为平权作斗争的事迹。金斯伯格曾就读于哈佛和哥伦比亚大学的法学院，1980年被任命为联邦上诉法院哥伦比亚特区巡回审判区法官，1993年由克林顿总统任命为联邦最高法院法官，是最高法院内富有争议的自由派法官之一，也是美国历史上第二位进入最高法院的女性法官，她在整个职业生涯里一直为平权、性别平等发声。影片将由咪咪·莱德(《守望尘世》《无耻之徒》)执导，Daniel Stiepleman操刀剧本，此剧本曾入选2014年剧本黑名单，焦点影业和Participant Media公司联合制作，9月份在蒙特利尔开机。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:6160/阳光电影www.ygdy8.com.性别为本.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:6160/阳光电影www.ygdy8.com.性别为本.BD.720p.中英双字幕.mkv</a></td>
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