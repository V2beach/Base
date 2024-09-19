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
		●片　　名  Cry Me a Sad River <br />
		●产　　地  中国 <br />
		●类　　别  剧情/爱情 <br />
		●语　　言  普通话 <br />
		●上映日期  2018-09-21(中国) <br />
		●IMDb评分  6.1/10 from 16 users <br />
		●豆瓣评分  5.9/10 from 36561 users <br />
		●片　　长  104分钟 <br />
		●导　　演  落落 Luo Luo <br />
		●主　　演  赵英博 Yingbo Zhao <br />
		●简　　介  多组校园欺凌事件，打破了5位主角本应该美好的青春校园生活。齐铭（赵英博 饰）清俊帅气，是人人称颂的优等生，而易遥（任敏 饰）却是大家口中的“赔钱货”。两人一同长大，感情很好。而这一切，在转学生唐小米（朱丹妮 饰）出现之后发生了翻天覆地的变化。流言成了毁人利器，处处对易瑶进行刁难，易遥的生活开始陷入黑暗，遭受各类残酷欺凌。顾森西（辛云来 饰）教会易瑶对校园暴力进行反击，他的出现给了易遥一丝曙光。可阴差阳错，顾森湘（章若楠 饰）的意外却将她再度推入黑暗。当受害者变成施暴者，当看客变成助推，在这一场名为“玩笑”的闹剧中，没有旁观者，只有施暴者…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7350/阳光电影www.ygdy8.com.悲伤逆流成河.HD.1080p.国语中英双字.mp4">ftp://ygdy8:ygdy8@yg45.dydytt.net:7350/阳光电影www.ygdy8.com.悲伤逆流成河.HD.1080p.国语中英双字.mp4</a></td>
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