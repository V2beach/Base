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
		●片　　名  犬舍真人版/杀戮重生犬屋敷(台)/犬屋敷 <br />
		●产　　地  日本 <br />
		●类　　别  动作/科幻 <br />
		●语　　言  日语 <br />
		●上映日期  2018-04-20(日本) <br />
		●IMDb评分  7.0/10 from 368 users <br />
		●豆瓣评分  6.6/10 from 1187 users <br />
		●片　　长  127分钟 <br />
		●导　　演  佐藤信介 Shinsuke Sato <br />
		●主　　演  木梨宪武 Noritake Kinashi <br />
		●简　　介  《犬舍》根据同名漫画改编。故事讲述了平凡无奇、将近60岁的普通上班族，犬屋敷， 在家里不受家人尊敬，也找不到自己活著的目标， 还被医生宣告将不久於人世。失意的他，却在公园与另一名少年被突如其来的外星生物砸到，整个身体都被摧毁了。不明的外星生物为了不影响地球的秩序，让犬屋敷和少年重生── 他们变成只有外表是人、身体却由机械所构成，拥有卓绝战斗能力的超强「人类」。两名尚拥有自己意志的「机械人类」会用这个力量作出什麼行动呢？ 又会对世界带来什麼影响呢？ <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg90.dydytt.net:8415/阳光电影www.ygdy8.com.犬舍真人版.BD.720p.日语中字.mkv">ftp://ygdy8:ygdy8@yg90.dydytt.net:8415/阳光电影www.ygdy8.com.犬舍真人版.BD.720p.日语中字.mkv</a></td>
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