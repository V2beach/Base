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
		●片　　名  滴答屋/墙上有一个钟的房子/墙里有钟的房子/魔钟奇幻屋(港) <br />
		●产　　地  美国/印度/加拿大 <br />
		●类　　别  喜剧/奇幻/冒险 <br />
		●语　　言  英语 <br />
		●上映日期  2018-09-21(美国)/2018-11-01(中国) <br />
		●IMDb评分  6.2/10 from 10663 users <br />
		●豆瓣评分  5.6/10 from 5518 users <br />
		●片　　长  104分钟 <br />
		●导　　演  伊莱·罗斯 Eli Roth <br />
		●主　　演  杰克·布莱克 Jack Black <br />
		●简　　介  失去双亲的小男孩路易斯（欧文·瓦卡罗 饰）前来投奔已离家多年的舅舅乔纳森（杰克·布莱克 饰），意外发现舅舅的真实身份竟是拥有神奇法术的魔法师，并对舅舅那栋充满超自然现象的房子好奇不已。舅舅乔纳森和同为魔法师的毒舌好友齐默尔曼夫人(凯特·布兰切特 饰)总在半夜寻找房子神秘“嘀嗒”声的来源，拥有邪恶法术的黑暗魔法师夫妻（凯尔·麦克拉克伦 和芮妮·戈兹贝里 分饰）在房子里留下了一个足以毁灭人类文明的惊天秘密。为了阻止阴谋实施，路易斯与舅舅乔纳森及齐默尔曼夫人共同经历了一系列奇幻刺激的魔法冒险…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:8361/阳光电影www.ygdy8.com.滴答屋.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:8361/阳光电影www.ygdy8.com.滴答屋.BD.720p.中英双字幕.mkv</a></td>
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