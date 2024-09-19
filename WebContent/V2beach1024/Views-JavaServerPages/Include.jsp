	<%
		String path = request.getContextPath(); 
		String basePath = request.getScheme()+"://"+request.getServerName()+":"
						  +request.getServerPort()+path+"/";
		String cssPath = path+"/V2beach1024/C-StyleSheets";
		String jsPath = path+"/V2beach1024/JavaScriptSource";
		String viewsPath = path+"/V2beach1024/Views-JavaServerPages";
		String imgPath = path+"/Images";
		String audioPath = path+"/Audios";
		String videoPath = path+"/Videos";
		String amazeuiPath = path+"/ViewsEditor/AmazeUI/assets";
		String ueditorPath = path+"/ViewsEditor/UEditor/utf8-jsp";
		
		request.setAttribute("path",path);
		request.setAttribute("cssPath",cssPath);
		request.setAttribute("jsPath",jsPath);
		request.setAttribute("viewsPath",viewsPath);
		request.setAttribute("imgPath",imgPath);
		request.setAttribute("audioPath",audioPath);
		request.setAttribute("videoPath",videoPath);
		request.setAttribute("amazeuiPath",amazeuiPath);
		request.setAttribute("ueditorPath",ueditorPath);
	%>
	
	<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<title>小站</title>
	<style> body {background-image:url('${imgPath}/Wallpaper/crossword.png');} </style>
	<link rel="shortcut icon" href="${imgPath}/Icon/Glass.ico"> 
	<link rel="Bookmark" href="${imgPath}/Icon/Glass.ico"> 
	<link href="${cssPath}/MyStyles.css" rel="stylesheet" type="text/css" >
	<link href="${cssPath}/buttons.css" rel="stylesheet" type="text/css" >
	<script src="${jsPath}/JQuery.js"></script>
	
	<script>document.getElementsByTagName('body').height=window.innerHeight;</script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/FortAwesome/Font-Awesome/css/all.min.css">
