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
		●片　　名  重金属囧途/重金属之旅 <br />
		●产　　地  芬兰/挪威 <br />
		●类　　别  喜剧/音乐 <br />
		●语　　言  芬兰语/英语/挪威语 <br />
		●上映日期  2018-03-09(芬兰) <br />
		●IMDb评分  7.2/10 from 2415 users <br />
		●豆瓣评分  7.6/10 from 5349 users <br />
		●片　　长  92分钟 <br />
		●导　　演  裘索·拉提欧 Juuso Laatio <br />
		●主　　演  托尔斯坦·比约克朗德 Torstein Bj?rklund <br />
		●简　　介  四个重金摇滚边缘人，主唱是疗养院清洁员，吉他手是驯鹿屠夫，贝斯手是图书馆管理员，听歌过耳不忘，曾死过两次的鼓手最有冲劲，一心想出国演出；他们在地下室练团12年，从没上台表演，镇上几乎每个人都鄙视他们，披头散发被人讥笑是「娘炮」，骑脚踏车还会莫名被临检，他们只好把所有怒 气都发泄在音乐上。 有天，城里来了一位国际出名的重金属音乐祭主办人，意外获得演出消息的他们，不管三七二十一，决定以团名「插爆直肠」出征上路，一路横冲直撞，偷车、盗墓、渡海、挟持精神病患样样来，甚至闯越两国边境与武装军人对抗，费尽千辛万苦，只为了一战成名的演出机会…… <br />
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
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:7397/阳光电影www.ygdy8.com.重金属囧途.BD.720p.中文字幕.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:7397/阳光电影www.ygdy8.com.重金属囧途.BD.720p.中文字幕.mkv</a></td>
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