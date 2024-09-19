<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button type="button" id="btn1" onclick="alert('我是按钮1的弹框')" >按钮1</button>
<button type="button" id="btn2">按钮2</button>
<script type="text/javascript">
    const BTN1 = document.getElementById('btn1');
    const BTN2 = document.getElementById('btn2');
    //给按钮2添加点击事件
    BTN2.addEventListener('click', function() {
    	BTN2.onclick();
        BTN1.onclick(); //按钮2点击后触发按钮1的onclick
        //BTN1.click(); //按钮2点击后触发按钮1的click 效果一样
    },false);
</script>

<input type="button" value="Click" id="C">
<input type="button" value="Wait" id="W" onclick="javascript:alert('D!');">

<script>
var C=document.getElementById("C");
var W=document.getElementById("W");
C.onclick=function Go(){
	alert("C!");
	W.onclick();
}
</script>
</body>
</html>