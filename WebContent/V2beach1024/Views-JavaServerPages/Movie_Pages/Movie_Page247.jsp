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
		●片　　名  Hello, Mrs. Money <br />
		●产　　地  中国 <br />
		●类　　别  喜剧 <br />
		●语　　言  普通话 <br />
		●上映日期  2018-09-30(中国) <br />
		●IMDb评分  5.1/10 from 71 users <br />
		●豆瓣评分  5.0/10 from 78496 users <br />
		●片　　长  113分钟 <br />
		●导　　演  吴昱翰 Yuhan Wu <br />
		●主　　演  黄才伦 Cailun Huang <br />
		●简　　介  《李茶的姑妈》改编自开心麻花同名爆笑舞台剧。李茶（宋阳 饰）是个穷小子，姑妈（卢靖姗 饰）却是全球女首富，自打李茶出生后二人便未曾谋面。为了娶到“势利眼富商”的女儿，李茶恳请姑妈出面牵线搭桥，可各怀鬼胎的一行人却误将男员工黄沧海（黄才伦 饰）认作姑妈。为了各自的利益，黄沧海、李茶连同梁杰瑞（艾伦 饰）三个人将计就计组团来“假扮姑妈”，正当众人纷纷讨好这位“假姑妈”时，神秘的“真姑妈”现身了，一连串的爆笑故事也发生了…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7370/阳光电影www.ygdy8.com.李茶的姑妈.HD.1080p.国语中英双字.mp4">ftp://ygdy8:ygdy8@yg45.dydytt.net:7370/阳光电影www.ygdy8.com.李茶的姑妈.HD.1080p.国语中英双字.mp4</a></td>
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