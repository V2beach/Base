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
		●片　　名  低压槽：欲望之城/低压槽 <br />
		●产　　地  中国/中国香港 <br />
		●类　　别  剧情/动作/悬疑/犯罪 <br />
		●语　　言  粤语/国语 <br />
		●上映日期  2018-04-28(中国) <br />
		●IMDb评分  5.3/10 from 82 users <br />
		●豆瓣评分  4.4/10 from 10167 users <br />
		●片　　长  112分钟 <br />
		●导　　演  张家辉 Nick Cheung <br />
		●主　　演  张家辉 Nick Cheung <br />
		●简　　介  从一宗离奇的小童绑架案开始，于秋和阿占查出老板的身份和他背后的犯罪网络。神秘的老板控制了商界和黑道，只有毁灭老板才能拯救这座堕落之城。事实上，于秋在追查过程中已经踏入了老板设下的重重圈套。虽然阿占拼死守着法律的底线，老板的势力却渗透了警方权力的高层，于秋渐渐失去了支持，原本要保护的小童也受到生命威胁。在接踵而至的迷局里，坚持正义的于秋好像被推向更深的绝望里…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg90.dydytt.net:8410/阳光电影www.ygdy8.com.低压槽：欲望之城.HD.720p.国粤双语中字.mkv">ftp://ygdy8:ygdy8@yg90.dydytt.net:8410/阳光电影www.ygdy8.com.低压槽：欲望之城.HD.720p.国粤双语中字.mkv</a></td>
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