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
		●片　　名  克隆人/复制人/复制品/复生人/捍卫生死线(台) <br />
		●产　　地  英国/中国/波多黎各/美国 <br />
		●类　　别  科幻/悬疑/犯罪 <br />
		●语　　言  英语 <br />
		●上映日期  2018-11-23(中国)/2019-01-11(美国) <br />
		●IMDb评分  5.4/10 from 12524 users <br />
		●豆瓣评分  6.2/10 from 8102 users <br />
		●片　　长  107分钟 <br />
		●导　　演  杰弗利·纳赫马诺夫 Jeffrey Nachmanoff <br />
		●主　　演  基努·里维斯 Keanu Reeves <br />
		●简　　介  供职于某生物科技公司的生物化学科学家威廉·福斯特（基努·里维斯 Keanu Reeves 饰），长久以来一直致力于克隆技术的研究。虽然科研的道路上困难重重，但他距离最终的成功似乎只有一步之遥。谁知就在关键时刻，一场车祸摧毁了他的幸福人生。车祸中，妻子莫娜（爱丽丝·伊芙 Alice Eve 饰）和三个可爱的孩子命归黄泉，这令威廉痛不欲生。然而，科学家的本能又促使他迅速冷静下来。他找到工作中的伙伴埃德·惠特尔（托马斯·米德蒂奇 Thomas Middleditch 饰）帮忙，决定利用自己的研究“复活”家人。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg72.dydytt.net:8358/阳光电影www.ygdy8.com.克隆人.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg72.dydytt.net:8358/阳光电影www.ygdy8.com.克隆人.BD.720p.中英双字幕.mkv</a></td>
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