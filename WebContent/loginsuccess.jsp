<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
if(request.getAttribute("Msg") != null){
String msg=(String)request.getAttribute("Msg");
if(msg.equals("회원가입 축하드려요~")){
out.println("<script>alert('"+msg +"')</script>");	
}	
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<title>두리번두리번</title>
</head>
<body class="index">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
		<h1 id="logo">
			<a href="loginsuccess.jsp">두리번두리번 <span>by 기혁, 윤헌, 동민, 세린</span></a>
		</h1>
		<nav id="nav">
		<ul>
			<li class="current"><a href="loginsuccess.jsp">HOME</a></li>
			<li><a class="button special" style="width: auto;">${sessionScope.name}님</a></li>
			<li><a href="logout.jsp" class="button special">logout</a></li>
			<li><a href="frontcontroller?command=retrieveList&mId=${sessionScope.name}"
				class="button special">mypage</a></li>
		</ul>
		</nav> </header>

		<!-- Banner -->
		<section id="banner">
		<div class="inner">

			<header>
			<h2>두리번두리번</h2>
			</header>
			<p>
				알짜배기 국내 여행 정보<br /> <strong>두리번두리번</strong>에서<br /> 확인하세요<br /> <br />
				are you ready for the trip? <br />
		</div>

		</section>

		<!-- Main <span class="icon fa-bar-chart-o"></span>-->
		<article id="main"> <header class="special container">
		<h2 style="font-family: MS Verdana; font-weight: bold;">지역을
			선택해주세요</h2>
		</header> <!-- One <div class="row 100%" style=" background: rgba(52, 27, 43, 0.2);">-->
		<section class="wrapper style2 container special-alt">
		<div class="row 100%" style="background: rgba(131, 211, 201, 0.65);"
			height="460">
			<jsp:include page="map.jsp" />
		</div>
		</section> </article>
	</div>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollgress.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>