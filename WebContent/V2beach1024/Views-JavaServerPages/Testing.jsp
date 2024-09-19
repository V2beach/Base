<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
	<script type="text/javascript">
		function tstFunction(){
			document.getElementById("demo").innerHTML="Nothing, really."
		}
	</script>
	<style>
	#Bubble{
		height:370px;
		width:307px;
	}
	#V2beachCn{
		position:absolute;
	}
	#box_outer{
		width:300px; 
		height:321px; 
		overflow:auto;
		color:#000;
		padding:0px;
		margin:0px;
	}
	#box_outer::-webkit-scrollbar{
		width: 16px;
		height: 16px;
		background-color: #F5F5F5;
	}
	 
	#box_outer::-webkit-scrollbar-track{
		-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
		border-radius: 10px;
		background-color: #F5F5F5;
	}
	 
	#box_outer::-webkit-scrollbar-thumb{
		border-radius: 10px;
		-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
		background-color: #555;
	}
	</style>
</head>

<body style="height:1000px">
	<%@include file="Template.jsp"%>
	
	<h1>Javascript, Skip &nbsp;'p117/(p127->p137:style and class???)/toggleMenu', &nbsp;Mission completed  --Update 2019-6-17</h1>
	<h3>就不练习键盘事件了。  --注:Document Object Model(Document,Element,Attribute,Event);Browser Object Model(Window,Navigator,Location,History,Screen)，<br>均有一些常用对象，是为宿主对象。（内置对象、自定义对象、宿主对象三大类对象之一）</h3>
	<div id="nulldiv">
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<script type="text/javascript">
			document.write("<p><strong>Nothing here.</strong></p>");
		</script>
		<p id="demo">You do not believe me?</p>
		<button type="button" onclick="tstFunction()">Really!</button>
	</div>
	
	<div class="center_videoaudio">
		<%@include file="VideoForOrder.jsp"%><br>
		<%@include file="AudioForOrder.jsp"%>
		<div id="color" style="width:200px;height:200px;background:red;position:absolute;"><strong>来滚动我~</strong></div>
		<div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<script type="text/javascript">//？？？
		var Sys = {};
        var ua = navigator.userAgent.toLowerCase();
        var s;
        (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
        (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
        (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
        (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
        (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;

        //以下进行测试
        if (Sys.ie) document.write('IE: ' + Sys.ie);
        if (Sys.firefox) document.write('Firefox: ' + Sys.firefox);
        if (Sys.chrome) document.write('Chrome: ' + Sys.chrome);
        if (Sys.opera) document.write('Opera: ' + Sys.opera);
        if (Sys.safari) document.write('Safari: ' + Sys.safari);
        function getBrowserInfo(){
            var Sys = {};
            var ua = navigator.userAgent.toLowerCase();
            var re =/(msie|firefox|chrome|opera|version).*?([\d.]+)/;
            var m = ua.match(re);
            Sys.browser = m[1].replace(/version/, "'safari");
            Sys.ver = m[2];
            return Sys;
        }
        document.write('<hr/>');
		//获取当前的浏览器信息
		var sys = getBrowserInfo();
		//sys.browser得到浏览器的类型，sys.ver得到浏览器的版本
		document.write("您的浏览器"+sys.browser + "的版本是：" + sys.ver);
		</script></div>
		
		<div><h1>开始Window训练。</h1></div>
	</div>
	
	
	<div id="div">
		<button id="button">别点我</button><p id="tip"></p>
		<button id="scrollbtn">点我已经没用了噢~</button><br><br>
		<script type="text/javascript">//DOM : Html -> Object which has attributes and functions.
		var index=0;
		var obj = {
				name:"V2beach",
				age:function(x){
					return x+1;
				},
				begin:new Date("04/06/2019 00:00:01"),
				end:new Date(),
				regUsername:new RegExp("^[A-Za-z0-9]{1,}$"),
				regPassword:/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*?])[A-Za-z\d!@#$%^&*?]{6,}$/,
		};
		var time=parseInt((obj.end-obj.begin)/(1000*60*60*24));
		document.write("距离2019-04-06搭建初代网站已经过去了<strong>"+time+"</strong>天<br>");
		document.write(obj.regPassword.test("a11233A?S")+"<br>");
		var button=document.getElementById("button");
		document.write(button+"<br>");
		var tip=document.getElementById("tip");
		button.onclick=function(){//Attribute
			index=index+1;
			switch (index) {
				case 1:button.innerHTML="讨厌(ノω<。)ノ说了别点我了~";break;//Attribute
				case 2:button.innerHTML="你再点..你再点我就...";break;
				case 3:button.innerHTML="还点,让你别点了caonima!";break;
				default:button.innerHTML="Fine, whatever.";break;
			}
			tip.innerHTML="点击第"+index+"次";
		};
		window.onunload=function(){//Load completed.
			alert("Please...");//onload->window!
		};
		
		var head=document.createElement("h3");
		var text=document.createTextNode("Js创建文本");
		head.appendChild(text);//A node.
		var div=document.getElementById("div");
		div.appendChild(head);
		div.insertBefore(head,button);
		
		var body=document.getElementsByTagName("body")[0];
		window.onload=function(){
			var nulldiv=document.getElementById("nulldiv");
			nulldiv.parentNode.removeChild(nulldiv);
			//body.removeChild(nulldiv);
			
			//Ref
			var box_outer=document.getElementById("box_outer");
			var box_inner=document.getElementById("box_inner");
			var scrollbtn=document.getElementById("scrollbtn");
			var checkbox=document.getElementById("checkbox");
			var submit=document.getElementById("submit");
			box_outer.onscroll=function(){
				if (box_outer.scrollHeight-box_outer.scrollTop==box_outer.clientHeight){
					checkbox.disabled=false;
					submit.disabled=false;
				}
			};
			
			//Bubble 
			var V2beachCn=document.getElementById("V2beachCn");
			document.onmousemove=function(event){//Bind to document but not V2beachCn.
				event=event||window.event;//?
				var left=event.pageX;//Mouse
				var top=event.pageY;
				V2beachCn.style.left=left+10+"px";//div
				V2beachCn.style.top=top+10+"px";
			};
			var Bubble=document.getElementById("Bubble");
			Bubble.onmousemove=function(event){//???
				event=event||window.event;
				event.cancelBubble=true;
			};
			
			//Bubble is of great use.
			var hyperlink=document.getElementById("hyperlink");
			var hyperBtn=document.getElementById("hyperBtn");
			var hyperindex=3;
			hyperBtn.onclick=function(){
				hyperindex=hyperindex+1;
				var newlink=document.createElement("li");
				newlink.innerHTML=("<a href='javascript:;' class='link'>Hyper"+hyperindex+"</a>")
				hyperlink.appendChild(newlink);
			};
			hyperlink.onclick=function(event){//<a>
				event=event||window.event;
				alert("触发事件的东西是啥呢？event.target="+event.target);
				if (event.target.className=="link" && hyperindex>3){
					alert("靠事件冒泡和委派绑定上了函数了嘿！");
				}
			};
			
			//addEventListener(Yeah) attachEvent(IE8)
			var addEventListenerBtn=document.getElementById("addEventListenerBtn");
			addEventListenerBtn.addEventListener("click",function(){
				alert("绑定的第一个函数");
			},false);
			addEventListenerBtn.addEventListener("click",function(){
				alert("绑定的第二个函数");
			},false);
			
			/*
			 * bind(obj, eventStr, callback)
			 * obj,要绑定事件的对象
			 * eventStr,无on的事件字符串
			 * callback,回调函数
			 */
			function bind(obj, eventStr, callback){
				if (obj.addEventListener){//对象默认是true，没这个函数就是IE8。
					obj.addEventListener(eventStr, callback, false);
				}
				else {
					obj.attachEvent("on"+eventStr, function(){
						/*
						 * call修改this，
						 * window是浏览器对象，
						 * Q:现在IE8调用这个函数的对象是window。
						 * A:通过匿名函数修改调用对象，现在的函数是function。
						 * ??? --Update 2019-6-16
						 */
						callback.call(obj);
					});
				}
			};
			var scrollbtn=document.getElementById("scrollbtn");
			function click(){
				alert("还是用bind绑定了一个函数~");
			}
			bind(scrollbtn,"click",click);
			/*
			 * Note:事件的传播
			 */
			 
			//Drag <>！！！ 
			var moveImg=document.getElementById("moveImg");
			/*moveImg.onmousedown=function(event){
				event=event||window.event;
				var offsetL=event.clientX-moveImg.offsetLeft;//Interesting
				var offsetT=event.clientY-moveImg.offsetTop;
				document.onmousemove=function(event){
					event=event||window.event;
					var left=event.clientX-offsetL;
					var top=event.clientY-offsetT;
					moveImg.style.left=left+"px";
					moveImg.style.top=top+"px";
				};
				
				document.onmouseup=function(){
					document.onmousemove=null;
					document.onmouseup=null;
				};
				
				return false;
			};*/               //↓
			function drag(obj){
				obj.onmousedown=function(event){
					event=event||window.event;
					var offsetL=event.clientX-obj.offsetLeft;//Interesting
					var offsetT=event.clientY-obj.offsetTop;
					document.onmousemove=function(event){
						event=event||window.event;
						var left=event.clientX-offsetL;
						var top=event.clientY-offsetT;
						obj.style.left=left+"px";
						obj.style.top=top+"px";
					};
					
					document.onmouseup=function(){
						document.onmousemove=null;
						document.onmouseup=null;
					};
					
					return false;
				};
			};
			drag(moveImg);
			
			//Mouse wheel
			var color=document.getElementById("color");
			color.onmousewheel=function(event){
				event=event||window.event;
				if (color.clientHeight>10){
					if (event.wheelDelta>0)//120
						color.style.height=color.clientHeight-10+"px";
				}
				if (event.wheelDelta<0)//-120
					color.style.height=color.clientHeight+10+"px";
				
				return false;//Ban default behaviour of Browser.
			}
			
			//Keyboard
			
			//Date y-m-d h:m:s
			var dateP = document.getElementById("dateP");
			setInterval(function() {
				var time = new Date();
				var m = time.getMonth() + 1;
				var t = time.getFullYear() + "-" + m + "-"
				+ time.getDate() + " " + time.getHours() + ":"
				+ time.getMinutes() + ":" + time.getSeconds();
				show.innerHTML = t;
			}, 1000);
			
			//Java->js
			<%session.setAttribute("attribute",new Date());%>
			var attribute='<%=session.getAttribute("attribute")%>';
			
			//regex
			regTest=new RegExp("#点歌");
			alert(regTest.test("#点歌 地球仪"));
			
			
		};// ↑ onload~~~
		
		window.onclose=function(){
			session.invalidate();//删除session，只有从这个页面关掉了网页才能删除session。
		};
		</script>
		<br>
	</div>
	<div id="Bubble">
		<p>欢迎，请阅读：</p>
		<div id="box_outer" style="border-style:outset;color:#1496bb;">
			<p style="color:black;font-family:Microsoft Yahei;" >
				亲爱的朋友，非常感谢您的注册，您的浏览就是对本人最大的支持，本网站还在建设中，请允许我为您做使用前的导航。<br>
				网站分为五个模块，分别为Home,System,Testing,Archives,About，<br>
				Home目前作为注册、登陆和欢迎页，<br>
				System为本人作业的测试模块，<br>
				Testing是平日进行开发学习的练习模块，<br>
				Archives现在被写为其它网页的连接部分，内含Robot、Music、Arrow三部分，<br>
				Robot是和机器人聊天的网页，<br>
				Music是本人尝试开发的一个点歌平台，<br>
				Arrow则是一个Html5小游戏，全称Bullseye game。<br>
				目前网站的内容还不甚完善，各个模块都只是暂时使用，还有很多想法没有实现，还有很多技术没有学会，
				希望您能不吝赐教，本人定当虚心交流，感激不尽。
			</p>
		</div>
		<div style="float:right;">
			<input id="checkbox" type="checkbox" disabled="disabled"/>
			<input id="submit" type="submit" value="submit" disabled="disabled"/>
		</div>
	</div>
	
	<div id="V2beachCn"><strong><br>&nbsp;&nbsp;&nbsp;V2beach.cn</strong></div>
	
	
	<div>
		<ul id="hyperlink">
			<p>我不是Hyperlink</p>
			<li><a href="javascript:;" class="link">Hyper1</a></li>
			<li><a href="javascript:;" class="link">Hyper2</a></li>
			<li><a href="javascript:;" class="link">Hyper3</a></li>
		</ul>
		<button id="hyperBtn">点我增加Hyperlink！</button><br>
		<button id="addEventListenerBtn">多函数绑定了噢！</button><br>
	</div>
	
	<div id="moveImg" style="position:absolute;height:230px;width:325px;right:100px;top:500px">
		<img src="${imgPath}/SthElse/Laopo2.jpg" height=230px width=325px title="老公，拖我~"/>
	</div>
	
	<div id="remain" style="position:absolute;height:230px;width:325px;right:100px;top:600px">
	</div>
	
	<div id="datetime" style="position:absolute;bottom:0px;right:0px;">
		<script type="text/javascript">
		document.getElementById('datetime').innerHTML=new Date().toLocaleString();
		setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);
		</script>
		<p id="dateP"> </p>
	</div>
	
</body>
</html>