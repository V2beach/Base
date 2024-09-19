<%@ page language="java" import="java.util.*,cn.v2beach.model.*" pageEncoding="UTF-8"%>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		HttpSession sessionAgain=request.getSession();
		String musicUrl=(String)sessionAgain.getAttribute("musicUrl");
		Set<Music> uncompletedMusicSet=(Set<Music>)session.getAttribute("uncompletedMusicSet");
		Set<Music> completedMusicSet=(Set<Music>)session.getAttribute("completedMusicSet");
	%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"  dir="ltr" lang="en-US"> <!--<![endif]-->
<head>

<link href="FormStyle.css" rel="stylesheet" type="text/css" media="screen" />

<meta charset="utf-8">
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="ppandp">
<meta name="Description" content="MY FOLIO – V2beach.cn" />
<title>MY FOLIO – V2beach.cn</title>
		<!-- FormStyle -->
		<link rel="stylesheet" type="text/css" href="../FormModels/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="../FormModels/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="../FormModels/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="../FormModels/css/component.css" />
		<!--[if IE]>
  		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
		<![endif]-->
<link href="css/reset.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/contact.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/styles.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/jquery.fancybox.css" rel="stylesheet" type="text/css" media="screen" />
<!--[if gt IE 8]><!--><link href="css/retina-responsive.css" rel="stylesheet" type="text/css" media="screen" /><!--<![endif]-->
<!--[if !IE]> <link href="css/retina-responsive.css" rel="stylesheet" type="text/css" media="screen" /> <![endif]-->
<!--[if lt IE 9]> <link href="css/styles-ie8.css" rel="stylesheet" type="text/css" media="screen" /> <![endif]-->
<link href="css/print.css" rel="stylesheet" type="text/css" media="print" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,700,600,800' rel='stylesheet' type='text/css' />
<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="js/modernizr.js" type="text/javascript"></script>
<script src="js/retina.js" type="text/javascript"></script>
<!--<script src="js/jquery.gomap-1.3.2.min.js" type="text/javascript"></script>-->
<script src="js/jquery.isotope.min.js" type="text/javascript"></script>
<script src="js/jquery.ba-bbq.min.js" type="text/javascript"></script>
<script src="js/jquery.isotope.load_home.js" type="text/javascript"></script>
<script src="js/jquery.form.js" type="text/javascript"></script>
<script src="js/input.fields.js" type="text/javascript"></script>
<script src="js/responsive-nav.js" type="text/javascript"></script>
<script src="js/jquery.jtweetsanywhere-1.3.1.min.js" type="text/javascript"></script>
<script defer src="js/jquery.flexslider-min.js"></script>
<script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="js/image-hover.js" type="text/javascript"></script>
<script src="js/scrollup.js" type="text/javascript"></script>
<script src="js/preloader.js" type="text/javascript"></script>
<script src="js/mousewheel.js" type="text/javascript"></script>
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<style>
.submit_btn {	
	width: 100px;
	height: 33px;
	border-width: 0px;
	border-radius: 3px;
	background: #1E90FF;
	cursor: pointer;
	outline: none;
	font-family: Microsoft YaHei;
	color: white;
	font-size: 17px;
}
.submit_btn:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}
</style>

</head>
<body>
<!-- Preloader -->
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
<header id="wrapper">
  <div class="container clearfix">
    <h1 id="logo"><a href="index.html">V2beach music</a></h1>
    <!-- start navi -->
    <div id="nav-button"> <span class="nav-bar"></span> <span class="nav-bar"></span> <span class="nav-bar"></span> </div>
    <div id="options" class="clearfix">
      <ul id="filters" class="option-set clearfix" data-option-key="filter">
        <li><a href="#filter=.home" class="selected">Home</a></li>
        <li><a href="#filter=.services">Robot</a></li>
        <li><a href="#filter=.portfolio">Portfolio</a></li>
        <li><a href="#filter=.about">V2beach.cn</a></li>
        <li><a href="#filter=.blog">Music blog</a></li>
        <!-- <li><a href="#filter=.contact">Contact</a></li> Drop this part.-->
      </ul>
    </div>
    <!-- end nav -->
  </div>
</header>
<!-- end header -->
<div class="copyrights">Music player -<a href="https://v2beach.cn/" target="_blank" title="V2beach">v2beach.cn</a></div>
<div class="container">
  <div id="container" class="clearfix">
    <div class="element  clearfix col1-1 home">
      <div class="col2-3">
        <div class="flexslider">
          <div class="images">
            <ul class="slides">
              <li><img src="images/pic1.jpg" alt="" /></li>
              <li><img src="images/pic1b.jpg" alt="" /></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col1-3 white-right">
        <h2>Music</h2>
        <p>Here is FM102.4, enjoy yourself.</p>
        <p class="small bottom"><a href="#filter=.blog" style="font-family:verdana">Visit my blog <span class="arrow">→</span></a></p>
      </div>
      <div class="clear"></div>
    </div>
    <div class="element clearfix col1-3 portfolio menu">
      <div class="images"><img src="images/pic6.jpg" alt="" /></div>
      <div class="white-bottom">
        <h2>Featured Works</h2>
        <p>Browse the whole portfolio:</p>
        <p class="small"><a href="#filter=.poland,+.menu">Poland <span class="arrow">→</span></a><br />
          <a href="#filter=.denmark,+.menu">Denmark <span class="arrow">→</span></a><br />
          <a href="#filter=.germany,+.menu">Germany <span class="arrow">→</span></a><br />
          <a href="#filter=.all,+.menu">View all <span class="arrow">→</span></a></p>
      </div>
    </div>
    <div class="element  clearfix col1-3 home poland all overflow"> <a href="images/pic2.jpg" title="" rel="group">
      <div class="images"><img src="images/pic2.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Proud Woman</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Poland, 2012</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element clearfix col1-3 services">
      <div class="images"><img src="images/pic7.jpg" alt="" /></div>
      <div class="white-bottom">
        <h2>Robot</h2>
        <p>A turing robot. <br>--Powered by V2beach</p>
      </div>
    </div>
    <div class="element  clearfix col2-3 services">
      <div class="col1-3 connect">
        <div class="images"><img src="images/pic11.jpg" alt="" /></div>
      </div>
      <div class="col1-3 white-right2">
        <h2>What Can It do?</h2>
        <h4>Option A</h4>
        <p style="font-style:normal;font-family:Microsoft Yahei">跟它聊聊天. </p>
        <h4>Option B</h4>
        <p style="font-style:normal;font-family:Microsoft Yahei">通过它点歌. </p>
        <p class="small bottom"><a href="#filter=.contact">Book me!</a></p>
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="../../Notindex.v">
			<img src="../Bot.png"
				 alt="Again, s'il vous plaît."
				 height=70px width=70px/>
		</a>
      </div>
      <div class="clear"></div>
    </div>
    <div class="element  clearfix col1-3 all portfolio germany overflow"> <a href="images/pic15.jpg" title="" rel="group">
      <div class="images"><img src="images/pic15.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Ambitions</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Germany, 2012</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element  clearfix col1-3 home">
      <div class="images"><img src="images/pic3.jpg" alt="" />
        <div class="icons twitter"></div>
      </div>
      <div class="white-bottom">
        <h2><a href="https://twitter.com/V2beach1">My Tweets</a></h2>
      </div>
    </div>
    <div class="element clearfix col1-3 auto all portfolio germany"> <a href="images/pic1.jpg" title="" rel="group">
      <div class="images"><img src="images/pic12.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>What a Picture</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Germany, 2013</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element clearfix col1-3 auto all portfolio germany"> <a href="images/pic13.jpg" title="" rel="group">
      <div class="images"><img src="images/pic13.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Posing Musician</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Germany, 2013</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element clearfix col1-3 all denmark home"> <a href="images/pic4.jpg" title="" rel="group">
      <div class="images"><img src="images/pic4.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Dark Outlook</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Denmark, 2012</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element home clearfix col1-3 all portfolio germany"> <a href="images/pic5.jpg" title="" rel="group">
      <div class="images"><img src="images/pic5.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Chilling Summer</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Germany, 2013</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element home clearfix col1-3 all poland"> <a href="images/pic9.jpg" title="" class="popup">
      <div class="images"><img src="images/pic9.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Just Married</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Poland, 2013</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element  clearfix col1-3 all denmark"> <a href="images/pic14.jpg" title="" class="popup">
      <div class="images"><img src="images/pic14.jpg" alt="" />
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Working in the Field</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Denmark, 2012</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
    <div class="element home clearfix col1-3 about">
      <a href="https://v2beach.cn">
      <div class="images"><img src="images/pic7.jpg" alt="" /></div>
      <div class="white-bottom">
        <h2>About me</h2>
        <p>V2beach, a sophomore, an explorer. <p align="right">--2019.06</p></p>
      </div>
      </a>
    </div>
    <div class="element  clearfix col1-3 blog blog1"> <a href="#filter=.blog%3Anot(.blog1),+.post1">
      <div class="images"><img src="images/pic8.jpg" alt="" />
        <div class="icons aside"></div>
      </div>
      <div class="white-bottom">
        <h2>Song Sheet</h2>
        <p>	Rain is falling all around,
			It falls on field and tree,
			It rains on the umbrella here,
			And on the ships at sea.. </p>
      </div>
      </a> </div>
    <div class="element  clearfix col2-3 post post1">
      <div class="images"><img src="images/blog-post.jpg" alt="" /><a href="#filter=.blog">
        <div class="icons close"></div>
        </a></div>
      <div class="white-bottom">
      	<h2>V2beach's song sheet.</h2>
      	<p>	Rain <br>
      		Rain is falling all around, <br>
			It falls on field and tree, <br>
			It rains on the umbrella here, <br>
			And on the ships at sea.. </p> <br>
      	<div id="skPlayer" style="margin:27px auto 0"></div>
      	<br><br><br><br><br><br>
      	<br><br><br><br><br><br>
      </div>
    </div>
    <div class="element  clearfix col1-3 blog blog2"> <a href="#filter=.blog%3Anot(.blog2),+.post2">
      <div class="images"><img src="images/pic3.jpg" alt="" />
        <div class="icons aside"></div>
      </div>
      <div class="white-bottom">
        <h2>Song Sheet</h2>
        <p>	To see a world in a grain of sand,
			And a heaven in a wild fllower,
			Hold infinity in the palm of your hand,
			And eternity in an hour. </p>
      </div>
      </a> </div>
    <div class="element  clearfix col2-3 post post2">
      <div class="images"><img src="images/blog-post.jpg" alt="" /><a href="#filter=.blog">
        <div class="icons close"></div>
        </a></div>
      <div class="white-bottom">
        <h2>Orlog's song sheet.</h2>
      	<p>	A Grain of Sand <br>
			To see a world in a grain of sand, <br>
			And a heaven in a wild fllower, <br>
			Hold infinity in the palm of your hand, <br>
			And eternity in an hour.</p> <br>
      	<!-- <div id="skPlayer" style="margin:27px auto 0"></div> -->
      	<br><br><br><br><br><br>
      	<br><br><br><br><br><br>
      	</div>
    </div>
    <div class="element  clearfix col1-3 blog blog3"> <a href="#filter=.blog%3Anot(.blog3),+.post3">
      <div class="images"><img src="images/pic7.jpg" alt="" />
        <div class="icons aside"></div>
      </div>
      <div class="white-bottom">
        <h2>Audio on demand</h2>
        <p style="font-family:verdana">Enjoy it. </p>
      </div>
      </a> </div>
    <div class="element  clearfix col2-3 post post3">
      <div class="images"><img src="images/blog-post.jpg" alt="" /><a href="#filter=.blog">
        <div class="icons close"></div>
        </a></div>
      <div class="white-bottom">
        <h2>点歌</h2>
        <p class="blockquote" style="font-family:verdana">"Music is a higher revelation than all wisdom and philosophy."
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--Beethoven</p>
		<form name="Music" action="<%=path %>/Music.v" method="post">
		<section class="content" style="background-color:#f9f7f6">
			<span class="input input--kaede"><!-- input no value -->
				<input class="input__field input__field--kaede" type="text" id="input-37" 
					name="musicName" value="歌名 (作者)" style="font-style:normal;font-family:Microsoft Yahei;
														padding-top:5px;margin:0;"/>
				<label class="input__label input__label--kaede" for="input-37"><!-- Bug! -->
					<span class="input__label-content input__label-content--kaede">Tell me!</span>
				</label>
			</span>
		</section>
			<input 	type  ="submit" value="点歌" class="submit_btn" id="submit_btn"
					style ="font-style:normal;font-family:Microsoft Yahei;text-decoration:none;
							position:absolute;right:10px;top:350px;padding-top:5px;margin:0;"/>
		</form>
		
		<!-- Song List -->
		<div>
			<div style="border-style:outset;color:black">
				<table 	style="text-align:center;border:0;cellspacing:0;font-family:Microsoft Yahei;
						table-layout: fixed;word-break: break-all; word-wrap: break-word;" >
					<tr>
						<td>歌名&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;点歌人&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;点歌时间</td>
					</tr>
					<%
						Music music=null;
						Iterator<Music> it=uncompletedMusicSet.iterator();
						while (it.hasNext()){
							music=it.next();
					%>
						<tr>
							<td><%=music.getSongname()%>&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;<%=music.getNickname()%>&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;<%=music.getSongdate()%></td>
						</tr>
					<%
						}
					%>
				</table>
			</div>
		</div>
		
       <audio id="audioMusic" width="320" height="240" controls="controls" preload="auto" autoplay="autoplay">
		  <source src="<%=musicUrl %>" type="audio/mpeg">
		</audio>
		<script type="text/javascript">
			var submit_btn=document.getElementById("submit_btn");
			var audioMusic=document.getElementById("audioMusic");
			submit_btn.onclick=function(){
				<%session.setAttribute("songdate",new Date().toLocaleString());%>
			};
			audioMusic.addEventListener("ended", function(){
		        location.href='<%=path%>/MusicedOrnot.v';
		    });
		</script>
      </div>
    </div>
    <div class="element  clearfix col1-3 blog blog4"> <a href="#filter=.blog%3Anot(.blog4),+.post4">
      <div class="images"><img src="images/pic3.jpg" alt="" />
        <div class="icons aside"></div>
      </div>
      <div class="white-bottom">
        <h2>History</h2>
        <p>View the completed song list.</p>
      </div>
      </a> </div>
    <div class="element  clearfix col2-3 post post4">
      <div class="images"><img src="images/blog-post.jpg" alt="" /><a href="#filter=.blog">
        <div class="icons close"></div>
        </a></div>
      <div class="white-bottom">
        <h2>点歌历史</h2>
        <p class="blockquote" style="font-family:verdana">"Music is a higher revelation than all wisdom and philosophy."
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--Beethoven</p>
		<!-- Song List -->
		<div>
			<div style="border-style:outset;color:black">
				<table 	style="text-align:center;border:0;cellspacing:0;font-family:Microsoft Yahei;
						table-layout: fixed;word-break: break-all; word-wrap: break-word;" >
					<tr>
						<td>歌名&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;点歌人&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;点歌时间</td>
					</tr>
					<%
						Music musicHistory=null;
						Iterator<Music> itHistory=completedMusicSet.iterator();
						while (itHistory.hasNext()){
							musicHistory=itHistory.next();
					%>
						<tr>
							<td><%=musicHistory.getSongname()%>&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;<%=musicHistory.getNickname()%>&nbsp;&nbsp;&nbsp;</td>
							<td>&nbsp;<%=musicHistory.getSongdate()%></td>
						</tr>
					<%
						}
					%>
				</table>
			</div>
		</div>
      </div>
    </div>
    <div class="element  clearfix col1-3 blog blog5"> <a href="#filter=.blog%3Anot(.blog5),+.post5">
      <div class="images"><img src="images/pic7.jpg" alt="" />
        <div class="icons aside"></div>
      </div>
      <div class="white-bottom">
        <h2>Song List Management</h2>
        <p>Music.</p>
      </div>
      </a> 
     </div>
    <div class="element  clearfix col2-3 post post5">
      <div class="images"><img src="images/blog-post.jpg" alt="" /><a href="#filter=.blog">
        <div class="icons close"></div>
        </a></div>
      <div class="white-bottom">
        <h2>Blog Post Heading</h2>
        <p>Phasellus leo ante, posuere in fringilla vitae, pretium at dui. Fusce et neque quis odio gravida auctor vel non mauris. Morbi auctor, sem ac tristique mollis, enim sapien molestie velit, in dignissim diam tellus ac turpis. Sed sollicitudin aliquam scelerisque. Phasellus elit diam, scelerisque at lobortis vitae, commodo et neque. Sed lobortis porta metus nec bibendum. Nunc tristique placerat elementum. </p>
        <p> Maecenas est lorem, imperdiet sed adipiscing et, fringilla eget justo. Etiam accumsan, elit ac tempus tincidunt, neque diam egestas nibh, a laoreet libero ante sed magna. Sed dictum, dui sed ultricies sollicitudin, arcu dui gravida velit, eu egestas nunc eros sed massa. </p>
        <p class="blockquote">" Mauris pellentesque, elit at interdum adipiscing, sapien urna sagittis nisi, in placerat orci quam varius sapien. Suspendisse auctor nulla id augue mollis tempor. "</p>
        <p>Mauris pellentesque, elit at interdum adipiscing, sapien urna sagittis nisi, in placerat orci quam varius sapien. Suspendisse auctor nulla id augue mollis tempor. Morbi auctor, sem ac tristique mollis, enim sapien molestie velit, in dignissim diam tellus ac turpis. </p>
      </div>
    </div>
    <div class="element  clearfix col1-3 blog blog6"> <a href="#filter=.blog%3Anot(.blog6),+.post6">
      <div class="images"><img src="images/pic8.jpg" alt="" />
        <div class="icons aside"></div>
      </div>
      <div class="white-bottom">
        <h2>Song List Management</h2>
        <p>Music.</p>
      </div>
      </a> </div>
    <div class="element  clearfix col2-3 post post6">
      <div class="images"><img src="images/blog-post.jpg" alt="" /><a href="#filter=.blog">
        <div class="icons close"></div>
        </a></div>
      <div class="white-bottom">
        <h2>Blog Post Heading</h2>
        <p>Phasellus leo ante, posuere in fringilla vitae, pretium at dui. Fusce et neque quis odio gravida auctor vel non mauris. Morbi auctor, sem ac tristique mollis, enim sapien molestie velit, in dignissim diam tellus ac turpis. Sed sollicitudin aliquam scelerisque. Phasellus elit diam, scelerisque at lobortis vitae, commodo et neque. Sed lobortis porta metus nec bibendum. Nunc tristique placerat elementum. </p>
        <p> Maecenas est lorem, imperdiet sed adipiscing et, fringilla eget justo. Etiam accumsan, elit ac tempus tincidunt, neque diam egestas nibh, a laoreet libero ante sed magna. Sed dictum, dui sed ultricies sollicitudin, arcu dui gravida velit, eu egestas nunc eros sed massa. </p>
        <p class="blockquote">" Mauris pellentesque, elit at interdum adipiscing, sapien urna sagittis nisi, in placerat orci quam varius sapien. Suspendisse auctor nulla id augue mollis tempor. "</p>
        <p>Mauris pellentesque, elit at interdum adipiscing, sapien urna sagittis nisi, in placerat orci quam varius sapien. Suspendisse auctor nulla id augue mollis tempor. Morbi auctor, sem ac tristique mollis, enim sapien molestie velit, in dignissim diam tellus ac turpis. </p>
      </div>
    </div>
    <div class="element home clearfix col1-3 contact">
      <div class="images"><img src="images/pic8.jpg" alt="" />
        <div class="icons bubble"></div>
      </div>
      <div class="white-bottom">
        <h2>Contact me</h2>
        <p>Hometown - <br>Gaomi, Shandong, China<br />
          V2beach, a sophomore, a noob. 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		--2019.06
		</p>
        <p> E-Mail: <a href="mailto:v2beach@foxmail.com" title="send email">v2beach@foxmail.com</a><br />
          Phone: 186-6360-2228</p>
      </div>
    </div>
    <div class="element  clearfix col2-3 contact">
      <div class="col1-3 connect">
        <div class="images"><img src="images/pic11.jpg" alt="" /></div>
      </div>
      <div class="col1-3 white-right2">
        <h2>Drop me a Line</h2>
        <div id="contact">
          <div id="message"></div>
          <form method="post" action="contact.php" name="contactform" id="contactform" autocomplete="off">
            <fieldset>
            <div class="alignleft padding-right">
              <label for="name" accesskey="U"><span class="required">Name</span></label>
              <input name="name" type="text" id="name" size="30" title="Name *" />
              <label for="email" accesskey="E"><span class="required">Email</span></label>
              <input name="email" type="text" id="email" size="30" title="Email *" />
            </div>
            <label for="comments" accesskey="C"><span class="required">Comments</span></label>
            <textarea name="comments" cols="40" rows="3" id="comments" title="Comment *"></textarea>
            <input type="submit" class="submit" id="submit" value="» Submit" />
            </fieldset>
          </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
    <div class="element home clearfix col2-3 all portfolio denmark about"> <a class="video-popup tippy" href="http://player.vimeo.com/video/48792900?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff">
      <div class="images"><img src="images/pic10.jpg" alt="" />
        <div class="icons video"></div>
        <div class="title">
          <div class="title-wrap">
            <h3> <span>Quiet Village</span></h3>
          </div>
        </div>
        <div class="subtitle">
          <div class="subtitle-wrap">
            <p> <span>Denmark, 2013</span> </p>
          </div>
        </div>
      </div>
      </a> </div>
  </div>
</div>
<!-- end header -->
<footer>
  <div class="container">
    <div class="centered">
      <ul class="social clearfix">
        <li class="tweat"><a href="#" onClick="return false">Visit our twitter Account</a></li>
        <li class="facebook"><a href="#" onClick="return false">Visit our facebook Account</a></li>
        <li class="dribble"><a href="#" onClick="return false">Visit our dribble Account</a></li>
        <li class="vimeo"><a href="#" onClick="return false">Visit our vimeo Account</a></li>
        <li class="google"><a href="#" onClick="return false">Visit our googleplus Account</a></li>
      </ul>
      <p class="small" style="font-family:verdana"> © 2019, Music player - More info <a href="https://v2beach.cn/" target="_blank" title="V2beach">v2beach.cn</a></p>
    </div>
  </div>
</footer>
<!-- BACK TO TOP BUTTON -->
<div id="backtotop">
  <ul>
    <li><a id="toTop" href="#" onClick="return false">Back to Top</a></li>
  </ul>
</div>

<script src="../MusicPlayer/dist/skPlayer.min.js"></script>
    <script>
        var player = new skPlayer({
            autoplay: false,
            music: {
                type: 'cloud',
                source: 609671558
            }
        });
    </script>
</body>
</html>