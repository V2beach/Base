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
		●片　　名  我杀死了巨人/巨人女杀手/杀死巨人的女孩(台) <br />
		●产　　地  美国/英国/比利时 <br />
		●类　　别  剧情/惊悚/奇幻 <br />
		●语　　言  英语 <br />
		●上映日期  2017-09-09(多伦多电影节)/2018-03-23(美国)/2018-04-06(英国) <br />
		●IMDb评分  6.2/10 from 21502 users <br />
		●豆瓣评分  5.6/10 from 3266 users <br />
		●片　　长  106分钟 <br />
		●导　　演  安德斯·瓦尔特 Anders Walter <br />
		●主　　演  麦迪逊·沃尔夫 Madison Wolfe <br />
		●简　　介  安德斯·瓦尔特执导的奇幻惊悚片[我杀巨人]曝光首款海报。该片由佐伊·索尔达娜、伊莫琴·普茨([房车])、麦迪逊·沃尔夫([招魂2])等主演。故事讲述述芭芭拉(麦迪逊·沃尔夫饰)选择逃离学校和家庭生活，因为这样可以回到神奇的巨人世界。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7379/阳光电影www.ygdy8.com.我杀死了巨人.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:7379/阳光电影www.ygdy8.com.我杀死了巨人.BD.720p.中英双字幕.mkv</a></td>
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