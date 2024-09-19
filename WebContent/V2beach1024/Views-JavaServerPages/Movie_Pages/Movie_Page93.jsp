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
		●片　　名  你给的仇恨/你的敌意/黑暗中的星光 <br />
		●产　　地  美国 <br />
		●类　　别  剧情/犯罪 <br />
		●语　　言  英语 <br />
		●上映日期  2018-09-07(多伦多电影节)/2018-10-19(美国) <br />
		●IMDb评分  6.8/10 from 4465 users <br />
		●豆瓣评分  8.0/10 from 530 users <br />
		●片　　长  132分钟 <br />
		●导　　演  小乔治·提尔曼 George Tillman Jr. <br />
		●主　　演  阿曼德拉·斯坦伯格 Amandla Stenberg <br />
		●简　　介  基于Angela Thomas所著同名小说，聚焦种族问题和警察暴行。16岁黑人女主角Starr Carter某天晚上去参加派对，遇到了儿时最好的朋友Khalil，派对之后后者载她回家，两人在路上被一个警察拦下，Khalil被迫下车，随后警察朝徒手的Khalil开枪。此事很快成为全国头条，Khalil被描述为“暴徒、毒贩”，而警察似乎并没有多大兴趣展开调查。 一群抗议者走上街头，将Starr居住的街区变为了战区，大家都尝试弄清楚到底发生了什么，而唯一知道真相的只有Starr，她做了很多采访试图还Khalil清白，她说的话将决定警察是进监狱还是被宣告无罪。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:3151/阳光电影www.ygdy8.com.你给的仇恨.HD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:3151/阳光电影www.ygdy8.com.你给的仇恨.HD.720p.中英双字幕.mkv</a></td>
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