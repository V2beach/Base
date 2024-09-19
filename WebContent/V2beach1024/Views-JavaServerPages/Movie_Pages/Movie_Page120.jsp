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
		●片　　名  把哥哥退货可以吗/大佬可以退货吗(港)/最佳次品 <br />
		●产　　地  泰国 <br />
		●类　　别  喜剧/爱情 <br />
		●语　　言  泰语/日语/英语 <br />
		●上映日期  2018-05-10(泰国) <br />
		●IMDb评分  6.8/10 from 777 users <br />
		●豆瓣评分  6.3/10 from 744 users <br />
		●片　　长  123分钟 <br />
		●导　　演  维达也·汤于容 Witthaya Thongyooyong <br />
		●主　　演  桑尼·苏瓦美塔农 Sunny Suwanmethanont <br />
		●简　　介  废柴哥哥查（Sunny 饰）跟模范生妹妹珍（Yaya 饰）从小争斗到大，但又鲁又废的他在优秀的妹妹面前任何事都占不了上风，唯有恶搞妹妹为乐，尤其是在妹妹谈恋爱时，常摆出兄长的架子来逞威风。而这次珍努力发展与日泰混血帅哥小饼（尼坤 饰）的恋情，但查却因不满妹妹的选择，决定要出招来恶搞这对小情人！势死保卫爱情的珍又该如何接招！ <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg72.dydytt.net:8320/阳光电影www.ygdy8.com.把哥哥退货可以吗.HD.720p.泰语中字.mkv">ftp://ygdy8:ygdy8@yg72.dydytt.net:8320/阳光电影www.ygdy8.com.把哥哥退货可以吗.HD.720p.泰语中字.mkv</a></td>
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