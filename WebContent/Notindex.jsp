<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@include file="/V2beach1024/Views-JavaServerPages/Include.jsp"%>
	<title>Chat with V2beach's robot</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
	      content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp"/>
	<link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
	<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
	<!-- AmazeUI -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<!-- UEditor -->
	<link href="assets/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8" src="assets/umeditor/umeditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="assets/umeditor/umeditor.min.js"></script>
	<script type="text/javascript" src="assets/umeditor/lang/zh-cn/zh-cn.js"></script>
	
	<script type="text/javascript" src="V2beach1024/JavaScriptSource/jQuery.js"></script>
	
	<style> body {background-image:url('${imgPath}/Wallpaper/crossword.png');} </style>
</head>
<body>
	<header class="am-topbar am-topbar-fixed-top"><!-- header? -->
	  <div class="am-container">
	    <h1 class="am-topbar-brand">
	      <a href="#">Black-box</a>
	    </h1>
	    <div class="am-collapse am-topbar-collapse" id="collapse-head">
	      <ul class="am-nav am-nav-pills am-topbar-nav">
	        <li class="am-active"><a href="#">Index</a></li>
	      </ul>
	
	      <div class="am-topbar-right">
	        <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm" id="signup"><span class="am-icon-pencil"></span>Sign up</button>
	        <script>
			$("#signup").click(function(){
				$(window).attr('location','https://v2beach.cn/Signup');
			})
			</script>
	      </div>
	
	      <div class="am-topbar-right">
	        <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm" id="signin"><span class="am-icon-user"></span>Sign in</button>
	        <script>
			$("#signin").click(function(){
				$(window).attr('location','https://v2beach.cn');
			})
			</script>
	      </div>
	    </div>
	  </div>
	</header>
	
	<div id="main">
		<!-- 聊天内容展示区域 -->
	<div id="ChatBox" class="am-g am-g-fixed" style="background-color:white;">
	  <div class="am-u-lg-12" style="height:400px;border:1px solid #999;overflow-y:scroll;">
		<ul id="chatContent" class="am-comments-list am-comments-list-flip">
			<li id="msgtmp" class="am-comment" style="display:none;">
			    <a href="">
			        <img class="am-comment-avatar" src="assets/images/other.jpg" alt=""/>
			    </a>
			    <div class="am-comment-main" >
			        <header class="am-comment-hd">
			            <div class="am-comment-meta">
			              <a ff="nickname" href="#link-to-user" class="am-comment-author">某人</a>
			              <time ff="msgdate" datetime="" title="">1999-01-01 00:00</time>
			            </div>
			        </header>
			     <div ff="content" class="am-comment-bd">此处是消息内容</div>
			    </div>
			</li>
		</ul>
	  </div>
	</div>
	<!-- 聊天内容发送区域 -->
	<div id="EditBox" class="am-g am-g-fixed">
	<!--style给定宽度可以影响编辑器的最终宽度-->
	<script type="text/plain" id="myEditor" style="width:100%;height:140px;"></script>
	<button id="send" type="button" class="am-btn am-btn-primary am-btn-block">发送</button>
	</div>
  
  
  	<form action="${path}/Music.v" method="post" id="musicForm" style="display:none">
  		<input name="musicName1" type="text" value="" />
  		<input type="submit" />
  		<input id="musicButton" type="button" />
  	</form>
</div>
<script type="text/javascript">

$(function(){


	//实例化编辑器
    var um = UM.getEditor('myEditor',{
    	initialContent:"Please input...",
    	autoHeightEnabled:false,
    	toolbar:[
            'source | undo redo | bold italic underline strikethrough | superscript subscript | forecolor backcolor | removeformat |',
            'insertorderedlist insertunorderedlist | selectall cleardoc paragraph | fontfamily fontsize' ,
            '| justifyleft justifycenter justifyright justifyjustify |',
            'link unlink | emotion image video  | map'
        ]
    });
    
    
    var nickname = "V2beach"+Math.random();
    var botname = "Robot";
	//var socket = new WebSocket("wss://${pageContext.request.getServerName()}:${pageContext.request.getServerPort()}${pageContext.request.contextPath}/websocket");
	var socket = new WebSocket("wss://v2beach.cn/websocket");
    //接收服务器的消息
    socket.onmessage=function(ev){
    	var obj = eval(   '('+ev.data+')'   );
    	addMessage(obj);
    	//addBotMessage(obj);//不对啊！！！！！！！
    }
    
    $("#send").click(function(){
    	if (!um.hasContents()) {  // 判断消息输入框是否为空
            // 消息输入框获取焦点
            um.focus();
            // 添加抖动效果
            $('.edui-container').addClass('am-animation-shake');
            setTimeout("$('.edui-container').removeClass('am-animation-shake')", 1000);
        } else {
        	//获取输入框的内容
        	var txt = um.getContent();
        	
        	//regex ↓
        	regMusic=new RegExp("#点歌");
        	if (regMusic.test(txt)) {
	        	//musicButton 怎么试不用$都不行，返回就是“”。ajax
	        	<%session.setAttribute("songdate",new Date().toLocaleString());%>
	        	var musicButton=document.getElementById("musicButton");
	        	var returnMsg;
	        	returnMsg=txt.replace("#点歌 ","");
	       		returnMsg=returnMsg.replace("<p>","");
	       		returnMsg=returnMsg.replace("</p>","");
	       		
	       		musicButton.onclick=function formAppendSubmit(){
	                var myform=$('#musicForm'); //得到form对象
	                var tmpInput=$("<input type='text' name='musicName'/>");
	                tmpInput.attr("value", returnMsg);
	                myform.append(tmpInput);
	                myform.submit();
	        	};
	        	musicButton.onclick();
        	}//jQeury...   ↑
        	
        	//构建一个标准格式的JSON对象
        	var obj = JSON.stringify({
	    		nickname:nickname,
	    		content:txt
	    	});
        	var botObj = JSON.stringify({
	    		nickname:botname,
	    		content:txt
	    	});
            // 发送消息
            socket.send(obj);
            socket.send(botObj);
            // 清空消息输入框
            um.setContent('');
            // 消息输入框获取焦点
            um.focus();
        }
    
    });
    
    
});

//人名nickname，时间date，是否自己isSelf，内容content
function addMessage(msg){

	var box = $("#msgtmp").clone(); 	//复制一份模板，取名为box
	box.show();							//设置box状态为显示
	box.appendTo("#chatContent");		//把box追加到聊天面板中
	box.find('[ff="nickname"]').html(msg.nickname); //在box中设置昵称
	box.find('[ff="msgdate"]').html(msg.date); 		//在box中设置时间
	box.find('[ff="content"]').html(msg.content); 	//在box中设置内容
	box.addClass(msg.isSelf? 'am-comment-flip':'');	//右侧显示
	box.addClass(msg.isSelf? 'am-comment-warning':'am-comment-success');//颜色
	box.css((msg.isSelf? 'margin-left':'margin-right'),"20%");//外边距
	
	$("#ChatBox div:eq(0)").scrollTop(999999); 	//滚动条移动至最底部
	
}

//人名nickname，时间date，是否自己isSelf，内容content
function addBotMessage(msg){

	var box = $("#msgtmp").clone(); 	//复制一份模板，取名为box
	box.show();							//设置box状态为显示
	box.appendTo("#chatContent");		//把box追加到聊天面板中
	box.find('[ff="nickname"]').html(msg.nickname); //在box中设置昵称
	box.find('[ff="msgdate"]').html(msg.date); 		//在box中设置时间
	box.find('[ff="content"]').html(msg.content); 	//在box中设置内容
	box.addClass(msg.isSelf? 'am-comment-flip':'');	//右侧显示
	box.addClass(msg.isSelf? 'am-comment-warning':'am-comment-success');//颜色
	box.css((msg.isSelf? 'margin-left':'margin-right'),"20%");//外边距
	
	$("#ChatBox div:eq(0)").scrollTop(999999); 	//滚动条移动至最底部
	
}


</script>

	<div class="tohome">
		<span title="Top" id="topArrow"></span>
		<script>
			$("#topArrow").click(function(){
				$(window).attr('location','https://v2beach.cn');
			})
		</script>
	</div>
	<div class="footer">
		<strong>您可以跟机器人聊天，点歌格式:#点歌 歌名（因音乐接口失效，点歌功能暂时关闭）</strong><br>
		 Copyright © V2beach | Powered by V2beach
	</div>
	
</body>
</html>
