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
		●片　　名  毒液：致命守护者/毒液/毒魔(港)/猛毒(台) <br />
		●产　　地  美国/中国 <br />
		●类　　别  动作/科幻/惊悚 <br />
		●语　　言  英语/汉语普通话 <br />
		●上映日期  2018-10-05(美国)/2018-11-09(中国) <br />
		●IMDb评分  7.0/10 from 128434 users <br />
		●豆瓣评分  7.3/10 from 253773 users <br />
		●片　　长  112分钟 <br />
		●导　　演  鲁本·弗雷斯彻 Ruben Fleischer <br />
		●主　　演  汤姆·哈迪 Tom Hardy <br />
		●简　　介  艾迪（汤姆·哈迪 Tom Hardy 饰）是一位深受观众喜爱的新闻记者，和女友安妮（米歇尔·威廉姆斯 Michelle Williams 饰）相恋多年，彼此之间感情十分要好。安妮是一名律师，接手了生命基金会的案件，在女友的邮箱里，艾迪发现了基金会老板德雷克（里兹·阿迈德 Riz Ahmed 饰）不为人知的秘密。为此，艾迪不仅丢了工作，女友也离他而去。之后，生命基金会的朵拉博士（珍妮·斯蕾特 Jenny Slate 饰）找到了艾迪，希望艾迪能够帮助她阻止德雷克疯狂的罪行。在生命基金会的实验室里，艾迪发现了德雷克进行人体实验的证据，并且在误打误撞之中被外星生命体毒液附身。回到家后，艾迪和毒液之间形成了共生关系，他们要应对的是德雷克派出的一波又一波杀手…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg90.dydytt.net:8425/阳光电影www.ygdy8.com.毒魔.HD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg90.dydytt.net:8425/阳光电影www.ygdy8.com.毒魔.HD.720p.中英双字幕.mkv</a></td>
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