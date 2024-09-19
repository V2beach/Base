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
		●片　　名  虽说是未成年，但可不是小孩哟/虽是未成年，但不是孩子 <br />
		●产　　地  日本 <br />
		●类　　别  喜剧/爱情 <br />
		●语　　言  日语 <br />
		●上映日期  2017-12-23(日本) <br />
		●IMDb评分  7.3/10 from 70 users <br />
		●豆瓣评分  5.6/10 from 1391 users <br />
		●片　　长  104分钟 <br />
		●导　　演  英勉 Tsutomu Hanabusa <br />
		●主　　演  中岛健人 Nakajima Kento <br />
		●简　　介  16岁的生日，今天我要结婚～ 成绩优秀又擅长运动的风云人物鹤木尚（中岛健人 饰）是高中校园众女学生的梦中情人，骄纵任性的大小姐折山香琳（平佑奈 饰）对他一见钟情。没想到香琳16岁生日时，父母给她的生日礼物竟然是和暗恋已久的尚「结婚」！ 香琳十分期待与尚展开新婚生活，然而现实却并非如此美好，尚对香琳展现了不曾出现的冷漠表情和言语，因为这段婚姻对尚而言，不过是为了折山家的经济势力而促成的「无爱婚姻」。香琳在「结婚后仍只能暗恋」的情况下，努力挑战不曾碰过的家事，企图获得尚的注意，尚也渐渐对努力不懈的香琳敞开心胸。就在某日，这场「秘密婚姻」却被单恋香琳的海老名五十铃（知念侑李 饰）发现了。五十铃要求尚结束这场无爱的婚姻，并且向香琳表白他暗藏已久的心意……究竟尚与香琳是否能走向幸福的结局？未成年的恋爱战争一触即发！ <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg72.dydytt.net:8315/阳光电影www.ygdy8.com.虽说是未成年，但可不是小孩哟.BD.720p.日语中字.mkv">ftp://ygdy8:ygdy8@yg72.dydytt.net:8315/阳光电影www.ygdy8.com.虽说是未成年，但可不是小孩哟.BD.720p.日语中字.mkv</a></td>
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