<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
	<script src="${jsPath}/Bot.js"></script>
	<style>   
        #container {    
            width: 450px;    
            height: 780px;    
            background: #eee;    
            margin: 80px auto 0;    
            position: relative;    
            box-shadow: 0px 0px 55px #777;    
        }    
        .header {    
            background: #000;    
            height: 40px;    
            color: #fff;    
            line-height: 34px;    
            font-size: 20px;    
            padding: 0 10px;    
        }    
        .robot_footer {    
            width: 430px;    
            height: 50px;    
            background: #666;    
            position: absolute;    
            bottom: 0;    
            padding: 10px;    
        }    
        .robot_footer input {    
            width: 275px;    
            height: 45px;    
            outline: none;    
            font-size: 20px;    
            text-indent: 10px;    
            position: absolute;    
            border-radius: 6px;    
            right: 80px;    
        }    
        .robot_footer span {    
            display: inline-block;    
            width: 62px;    
            height: 48px;    
            background: #ccc;    
            font-weight: 900;    
            line-height: 45px;    
            cursor: pointer;    
            text-align: center;    
            position: absolute;    
            right: 10px;    
            border-radius: 6px;    
        }    
        .robot_footer span:hover {    
            color: #fff;    
            background: #999;    
        }    
        #user_face_icon {    
            display: inline-block;    
            background: white;    
            width: 60px;    
            height: 60px;    
            border-radius: 30px;    
            position: absolute;    
            bottom: 6px;    
            left: 14px;    
            cursor: pointer;    
            overflow: hidden;    
        }    
        img {    
            width: 60px;    
            height: 60px;    
        }    
        .content {    
            font-size: 20px;    
            width: 435px;    
            height: 662px;    
            overflow: auto;    
            padding: 5px;    
        }    
        .content li {    
            margin-top: 10px;    
            padding-left: 10px;    
            width: 412px;    
            display: block;    
            clear: both;    
            overflow: hidden;    
        }    
        .content li img {    
            float: left;    
        }    
        .content li span{    
            background: #7cfc00;    
            padding: 10px;    
            border-radius: 10px;    
            float: left;    
            margin: 6px 10px 0 10px;    
            max-width: 310px;    
            border: 1px solid #ccc;    
            box-shadow: 0 0 3px #ccc;    
        }    
        .content li img.imgleft {     
            float: left;     
        }    
        .content li img.imgright {     
            float: right;     
        }    
        .content li span.spanleft {     
            float: left;    
            background: #fff;    
        }    
        .content li span.spanright {     
            float: right;    
            background: #7cfc00;    
        }    
    </style> 
</head>

<body>
	<%@include file="Template.jsp"%>
    <div id="container">   
        <div class="header">   
            <span style="float: left;">V2beach's Robot</span>   
            <span style="float: right;">1991/01/01 &nbsp;&nbsp;&nbsp;00:01</span>   
        </div>   
        <ul class="content"></ul>   
        <div class="robot_footer">   
            <div id="user_face_icon">   
                <img src="${imgPath}/Icon/Sun.png" alt="" width=60px height=60px>   
            </div>   
            <input id="text" type="text" name="robotInput" placeholder="说点什么吧...">   
            <span id="btn">发送</span>
        </div>   
    </div>
</body>
</html>
