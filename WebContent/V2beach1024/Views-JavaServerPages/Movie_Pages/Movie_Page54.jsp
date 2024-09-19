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
		●片　　名  第一缕曙光 <br />
		●产　　地  加拿大 <br />
		●类　　别  科幻 / 惊悚 <br />
		●语　　言  英语 <br />
		●上映日期  2018-03-10(西南偏南电影节) <br />
		●IMDb评分  5.5/10 from 1387 users <br />
		●豆瓣评分  5.5/10 from 138 users <br />
		●片　　长  91分钟 <br />
		●导　　演  杰森·斯通 Jason Stone <br />
		●主　　演  斯戴芬妮·斯考特 Stefanie Scott <br />
		●简　　介  在一个聚会上,“肖恩”重逢了他青梅竹马的前女友“阿莉克丝”,之前两人因为肖恩妈妈的离去而逐渐疏远。阿莉克丝的新男友汤姆邀请她去一个危险的水库游泳,水流忽然变得湍急冲散了他们,随即不远处的电塔发出了强烈的蓝绿光击晕了水中的阿莉克丝;当她再次醒来的时候,她失去了记忆并发现自己拥有了强大的磁场超能力,她凭借身上肖恩写下的电话找到了他。而此时一个神秘的组织正急切地寻找着阿莉克丝,希望从她身上找到她受电击后存活下来的答案。肖恩陪同阿莉克丝逃亡的过程中,他们逐渐发现了关于她的超能力和有关未知生物实验的秘密…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:4107/阳光电影www.ygdy8.com.第一缕曙光.BD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:4107/阳光电影www.ygdy8.com.第一缕曙光.BD.720p.中英双字幕.mkv</a></td>
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