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
		●片　　名  超人总动员2/超人家族2/超人特工队2(港)/超人特攻队2(台) <br />
		●产　　地  美国 <br />
		●类　　别  喜剧/动作/动画/冒险 <br />
		●语　　言  英语 <br />
		●上映日期  2018-06-15(美国)/2018-06-22(中国) <br />
		●IMDb评分  8.0/10 from 105990 users <br />
		●豆瓣评分  8.0/10 from 90106 users <br />
		●片　　长  118分钟 <br />
		●导　　演  布拉德·伯德 Brad Bird <br />
		●主　　演  格雷格·T·尼尔森 Craig T. Nelson <br />
		●简　　介  超人家族时隔14年强势回归！这次站在聚光灯下的是弹力女超人海伦（霍利·亨特 配音），超能先生巴鲍勃（格雷格·T·尼尔森 配音）则在家照料巴小倩和巴小飞，过起了“正常人”的居家生活。这一角色转换对于每个家庭成员来说都是艰难的，更何况他们都还没意识到宝宝巴小杰的超能力已经悄然增长。当剧中新反派开始酝酿一个狡诈危险的阴谋，超人家族必须联合酷冰侠（塞缪尔·杰克逊 配音）的力量团结对外——然而即使各自都有超能力，真正做起来却是知易行难。 <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:4097/阳光电影www.ygdy8.com.超人总动员2.HD.720p.中英双字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:4097/阳光电影www.ygdy8.com.超人总动员2.HD.720p.中英双字幕.mkv</a></td>
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