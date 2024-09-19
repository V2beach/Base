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
		●片　　名  巨鳄风暴/噬逃险鳄(港)/爬行/鳄魔(台) <br />
		●产　　地  美国 <br />
		●类　　别  剧情/惊悚/恐怖/灾难 <br />
		●语　　言  英语 <br />
		●上映日期  2019-07-12(美国)/2019-09-12(中国) <br />
		●IMDb评分  6.5/10 from 15593 users <br />
		●豆瓣评分  5.9/10 from 19541 users <br />
		●片　　长  87分钟 <br />
		●导　　演  亚历山大·阿嘉 Alexandre Aja <br />
		●主　　演  卡雅·斯考达里奥 Kaya Scodelario <br />
		●简　　介  一场猛烈的飓风正在逼近美国佛罗里达州的一座小镇。女主角海莉（卡雅·斯考达里奥饰）在游泳训练中接到了姐姐的电话，他们的父亲（巴里·佩珀饰）已经失联多时，她非常担心父亲的安危。海莉不顾撤离命令独自前往父亲家中，并最终在地下室里找到了身受重伤的父亲。洪水暴涨眼看就要将地下室淹没，海莉很快就意识到最可怕的并不是洪水，而是隐藏在水中的致命猛兽--鳄鱼。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg68.dydytt.net:7010/阳光电影www.ygdy8.com.巨鳄风暴.BD.1080p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg68.dydytt.net:7010/阳光电影www.ygdy8.com.巨鳄风暴.BD.1080p.中英双字幕.mkv</a></td>
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