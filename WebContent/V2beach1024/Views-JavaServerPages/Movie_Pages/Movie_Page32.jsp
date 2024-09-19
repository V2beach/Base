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
		●片　　名  李宗伟：败者为王/李宗伟/败者为王 <br />
		●产　　地  马来西亚 <br />
		●类　　别  剧情/传记/运动 <br />
		●语　　言  闽南语/普通话/马来语 <br />
		●上映日期  2018-03-15(马来西亚)/2018-09-07(中国) <br />
		●IMDb评分  7.6/10 from 153 users <br />
		●豆瓣评分  7.0/10 from 2908 users <br />
		●片　　长  110分钟 <br />
		●导　　演  马逸腾 Teng Bee <br />
		●主　　演  李国煌 Mark Lee <br />
		●简　　介  电影改编自羽坛天王李宗伟的真实经历，讲述了一个永不言弃的励志感人故事。李宗伟从小就喜欢羽毛球，但是贫困的家境和父亲的反对，让打球的梦想成为一种奢望。李宗伟背着父亲偷偷练球，还差点儿被地下赌场利用，但他的毅力也终于打动了父亲，开始了正规的羽球训练，并被选入国家队。然而幸运的日子没有多久，打击接踵而来，队友排挤、落选、失恋，他更是在国际大赛中遇到劲敌，频频落败。背负着重重压力的李宗伟面对强大对手，选择了再次出发…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:6135/阳光电影www.ygdy8.com.李宗伟：败者为王.HD.1080p.中字.mp4">ftp://ygdy8:ygdy8@yg45.dydytt.net:6135/阳光电影www.ygdy8.com.李宗伟：败者为王.HD.1080p.中字.mp4</a></td>
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