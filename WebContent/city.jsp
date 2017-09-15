<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>상세검색</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/city.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/w3-theme-blue-grey.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato:300,400,900">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
html, body, h1, h2, h3, h4, h5 {
	font-family: FontAwesome
}

#myBtn {
	display: none;
	position: fixed;
	bottom: 20px;
	right: 30px;
	z-index: 99;
	border: none;
	outline: none;
	background-color: #83d3c9;
	color: white;
	cursor: pointer;
	padding: 15px;
	border-radius: 10px;
}

#myBtn:hover {
	background-color: #555;
}
</style>


</head>

<body class="w3-theme-l5">
	<!-- TopButton -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-left-align w3-large main-bar-color">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2"
				href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a>
			<c:if test="${sessionScope.name != null}">
				<!-- login상태에서 home키 눌렀을 때 login상태 유지 수정 mypage도 같이 수정 -->
				<a href="loginsuccess.jsp"
					class="w3-bar-item w3-button w3-padding-large main-bar-color"><i
					class="fa fa-home w3-margin-right"></i><strong>HOME</strong></a>
			</c:if>

			<c:if test="${sessionScope.name == null}">
				<a href="index.jsp"
					class="w3-bar-item w3-button w3-padding-large main-bar-color"><i
					class="fa fa-home w3-margin-right"></i><strong>HOME</strong></a>
			</c:if>

			<div class="w3-right w3-hide-small">
				<a href="#attraction"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="News"><Strong>관광명소</Strong></a> <a href="#restaurant"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Account Settings"><Strong>추천맛집</Strong></a> <a
					href="#festival"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Messages"><Strong>지역축제</Strong></a> 
					<c:if test="${sessionScope.name != null}"> 
					<a href="frontcontroller?command=retrieveList"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Messages"><Strong>MyProfile</Strong></a>
					</c:if>
					
					<c:if test="${sessionScope.name == null}"> 
					<a href="joinplease.jsp"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Messages"><Strong>MyProfile</Strong></a>
					</c:if>
			</div>
		</div>
	</div>

	<!-- Navbar on small screens -->
	<div id="navDemo"
		class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large w3-show">
		<a
			class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2"
			href="javascript:void(0);" onclick="openNav()"><i
			class="fa fa-bars"></i></a> <a href="#attraction"
			class="w3-bar-item w3-button w3-padding-large"><Strong>관광명소</Strong></a>
		<a href="#restaurant" class="w3-bar-item w3-button w3-padding-large"><Strong>추천맛집</Strong></a>
		<a href="#festival" class="w3-bar-item w3-button w3-padding-large"><Strong>지역축제</Strong></a>
		<a href="frontcontroller?command=retrieveList"
			class="w3-bar-item w3-button w3-padding-large"><Strong>My
				Profile</Strong></a>
	</div>
	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- Profile -->
				
				<br>

				<div class="w3-card-2 w3-round" style="font-weight: 900">
					<div class="w3-white">
						<button onclick="myFunction('Demo1')"
							class="w3-button w3-block main-bar-color w3-left-align">
							강원도</button>
						<div id="Demo1" class="w3-hide w3-container">
							<button class="w3-button"
								onclick="location.href='frontcontroller?command=placeList&cId=7'">
								강릉시</button>
							<br>
							<button class="w3-button">춘천시</button>
							<br>
							<button class="w3-button">원주시</button>
							<br>
							<button class="w3-button">동해시</button>
							<br>
							<button class="w3-button">태백시</button>
							<br>
							<button class="w3-button">속초시</button>
							<br>
							<button class="w3-button">삼척시</button>
							<br>
							<button class="w3-button">홍천군</button>
							<br>
							<button class="w3-button">횡성군</button>
							<br>
							<button class="w3-button">영월군</button>
							<br>
							<button class="w3-button">평창군</button>
							<br>
							<button class="w3-button">정선군</button>
							<br>
							<button class="w3-button">철원군</button>
							<br>
							<button class="w3-button">회천군</button>
							<br>
							<button class="w3-button">양구군</button>
							<br>
							<button class="w3-button">인제군</button>
							<br>
							<button class="w3-button">고성군</button>
							<br>
							<button class="w3-button">양양군</button>
							<br>
						</div>
						<button onclick="myFunction('Demo2')"
							class="w3-button w3-block main-bar-color w3-left-align">
							경기도</button>
						<div id="Demo2" class="w3-hide w3-container ">
							<button class="w3-button"
								onclick="location.href='frontcontroller?command=placeList&cId=6'">파주시</button>
							<br>
							<button class="w3-button">의정부시</button>
							<br>
							<button class="w3-button">수원시</button>
							<br>
							<button class="w3-button">안양시</button>
							<br>
							<button class="w3-button">부천시</button>
							<br>
							<button class="w3-button">광명시</button>
							<br>
							<button class="w3-button">평택시</button>
							<br>
							<button class="w3-button">동두천시</button>
							<br>
							<button class="w3-button">안산시</button>
							<br>
							<button class="w3-button">고양시</button>
							<br>
							<button class="w3-button">과천시</button>
							<br>
							<button class="w3-button">구리시</button>
							<br>
							<button class="w3-button">남양주시</button>
							<br>
							<button class="w3-button">오산시</button>
							<br>
							<button class="w3-button">군포시</button>
							<br>
							<button class="w3-button">시흥시</button>
							<br>
							<button class="w3-button">의왕시</button>
							<br>
							<button class="w3-button">하남시</button>
							<br>
							<button class="w3-button">용인시</button>
							<br>
							<button class="w3-button">성남시</button>
							<br>
							<button class="w3-button">이천시</button>
							<br>
							<button class="w3-button">안성시</button>
							<br>
							<button class="w3-button">김포시</button>
							<br>
							<button class="w3-button">화성시</button>
							<br>
							<button class="w3-button">광주시</button>
							<br>
							<button class="w3-button">양주시</button>
							<br>
							<button class="w3-button">포천시</button>
							<br>
							<button class="w3-button">여주시</button>
							<br>
							<button class="w3-button">연천군</button>
							<br>
							<button class="w3-button">가평군</button>
							<br>
							<button class="w3-button">양평군</button>
							<br>
						</div>
						<button onclick="myFunction('Demo3')"
							class="w3-button w3-block main-bar-color w3-left-align">
							경상남도</button>
						<div id="Demo3" class="w3-hide w3-container">
							<button class="w3-button">창원시</button>
							<br>
							<button class="w3-button">진주시</button>
							<br>
							<button class="w3-button">통영시</button>
							<br>
							<button class="w3-button">사천시</button>
							<br>
							<button class="w3-button">김해시</button>
							<br>
							<button class="w3-button">밀양시</button>
							<br>
							<button class="w3-button">거제시</button>
							<br>
							<button class="w3-button">양산시</button>
							<br>
							<button class="w3-button">의령군</button>
							<br>
							<button class="w3-button">함안군</button>
							<br>
							<button class="w3-button">창녕군</button>
							<br>
							<button class="w3-button">남해군</button>
							<br>
							<button class="w3-button">하동군</button>
							<br>
							<button class="w3-button">산청군</button>
							<br>
							<button class="w3-button">함양군</button>
							<br>
							<button class="w3-button">거창군</button>
							<br>
							<button class="w3-button">합천군</button>
							<br>
						</div>
						<button onclick="myFunction('Demo4')"
							class="w3-button w3-block main-bar-color w3-left-align">
							경상북도</button>
						<div id="Demo4" class="w3-hide w3-container ">
							<button class="w3-button">포항시</button>
							<br>
							<button class="w3-button">경주시</button>
							<br>
							<button class="w3-button">김천시</button>
							<br>
							<button class="w3-button">안동시</button>
							<br>
							<button class="w3-button">구미시</button>
							<br>
							<button class="w3-button">영주시</button>
							<br>
							<button class="w3-button">영천시</button>
							<br>
							<button class="w3-button">상주시</button>
							<br>
							<button class="w3-button">문경시</button>
							<br>
							<button class="w3-button">경산시</button>
							<br>
							<button class="w3-button">군위시</button>
							<br>
							<button class="w3-button">의성시</button>
							<br>
							<button class="w3-button">청송군</button>
							<br>
							<button class="w3-button">영양군</button>
							<br>
							<button class="w3-button">영덕군</button>
							<br>
							<button class="w3-button">청도군</button>
							<br>
							<button class="w3-button">고령군</button>
							<br>
							<button class="w3-button">상주군</button>
							<br>
							<button class="w3-button">칠곡군</button>
							<br>
							<button class="w3-button">예천군</button>
							<br>
							<button class="w3-button">봉화군</button>
							<br>
							<button class="w3-button">울진군</button>
							<br>
							<button class="w3-button">울릉군</button>
							<br>
						</div>
						<button
							onclick="myFunction('Demo10');location.href='frontcontroller?command=placeList&cId=5'"
							class="w3-button w3-block main-bar-color w3-left-align">
							광주광역시</button>
						<div id="Demo10" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo5');location.href='frontcontroller?command=placeList&cId=3'"
							class="w3-button w3-block main-bar-color w3-left-align">
							대구광역시</button>
						<div id="Demo5" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo6');location.href='frontcontroller?command=placeList&cId=8'"
							class="w3-button w3-block main-bar-color w3-left-align">
							대전광역시</button>
						<div id="Demo6" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo7');location.href='frontcontroller?command=placeList&cId=4'"
							class="w3-button w3-block main-bar-color w3-left-align">
							부산광역시</button>
						<div id="Demo7" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo8');location.href='frontcontroller?command=placeList&cId=1'"
							class="w3-button w3-block main-bar-color w3-left-align">
							서울특별시</button>
						<div id="Demo8" class="w3-hide w3-container"></div>
						<button onclick="myFunction('Demo9')"
							class="w3-button w3-block main-bar-color w3-left-align">
							세종특별자치시</button>
						<div id="Demo9" class="w3-hide w3-container"></div>
						<button onclick="myFunction('Demo15');"
							class="w3-button w3-block main-bar-color w3-left-align">
							울산광역시</button>
						<div id="Demo15" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo11');location.href='frontcontroller?command=placeList&cId=2'"
							class="w3-button w3-block main-bar-color w3-left-align">
							인천광역시</button>
						<div id="Demo11" class="w3-hide w3-container"></div>
						<button onclick="myFunction('Demo12')"
							class="w3-button w3-block main-bar-color w3-left-align">
							전라남도</button>
						<div id="Demo12" class="w3-hide w3-container ">
							<button class="w3-button">목포시</button>
							<br>
							<button class="w3-button">여수시</button>
							<br>
							<button class="w3-button">순천시</button>
							<br>
							<button class="w3-button">나주시</button>
							<br>
							<button class="w3-button">광양시</button>
							<br>
							<button class="w3-button">담양군</button>
							<br>
							<button class="w3-button">곡성군</button>
							<br>
							<button class="w3-button">구례군</button>
							<br>
							<button class="w3-button">고흥군</button>
							<br>
							<button class="w3-button">보성군</button>
							<br>
							<button class="w3-button">화순군</button>
							<br>
							<button class="w3-button">장흥군</button>
							<br>
							<button class="w3-button">강진군</button>
							<br>
							<button class="w3-button">해남군</button>
							<br>
							<button class="w3-button">영암군</button>
							<br>
							<button class="w3-button">무안군</button>
							<br>
							<button class="w3-button">함평군</button>
							<br>
							<button class="w3-button">영광군</button>
							<br>
							<button class="w3-button">장성군</button>
							<br>
							<button class="w3-button">완도군</button>
							<br>
							<button class="w3-button">진도군</button>
							<br>
							<button class="w3-button">신안군</button>
							<br>
						</div>
						<button onclick="myFunction('Demo13')"
							class="w3-button w3-block main-bar-color w3-left-align">
							전라북도</button>
						<div id="Demo13" class="w3-hide w3-container ">
							<button class="w3-button"
								onclick="location.href='frontcontroller?command=placeList&cId=9'">전주시</button>
							<br>
							<button class="w3-button">군산시</button>
							<br>
							<button class="w3-button">익산시</button>
							<br>
							<button class="w3-button">정읍시</button>
							<br>
							<button class="w3-button">남원시</button>
							<br>
							<button class="w3-button">김제시</button>
							<br>
							<button class="w3-button">완주군</button>
							<br>
							<button class="w3-button">진안군</button>
							<br>
							<button class="w3-button">무주군</button>
							<br>
							<button class="w3-button">장수군</button>
							<br>
							<button class="w3-button">임살군</button>
							<br>
							<button class="w3-button">순창군</button>
							<br>
							<button class="w3-button">고창군</button>
							<br>
							<button class="w3-button">부안군</button>
							<br>
						</div>
						<button onclick="myFunction('Demo14')"
							class="w3-button w3-block main-bar-color w3-left-align">
							제주도</button>
						<div id="Demo14" class="w3-hide w3-container ">
							<button class="w3-button">제주시</button>
							<br>
							<button class="w3-button">서귀포시</button>
							<br>
						</div>
						<button onclick="myFunction('Demo16')"
							class="w3-button w3-block main-bar-color w3-left-align">
							충청남도</button>
						<div id="Demo16" class="w3-hide w3-container ">
							<button class="w3-button">천안시</button>
							<br>
							<button class="w3-button">공주시</button>
							<br>
							<button class="w3-button">보령시</button>
							<br>
							<button class="w3-button">아산시</button>
							<br>
							<button class="w3-button">서산시</button>
							<br>
							<button class="w3-button">논산시</button>
							<br>
							<button class="w3-button">계룡시</button>
							<br>
							<button class="w3-button">당진시</button>
							<br>
							<button class="w3-button">금산군</button>
							<br>
							<button class="w3-button">부여군</button>
							<br>
							<button class="w3-button">서천군</button>
							<br>
							<button class="w3-button">청양군</button>
							<br>
							<button class="w3-button">홍성군</button>
							<br>
							<button class="w3-button">예산군</button>
							<br>
							<button class="w3-button">태안군</button>
							<br>
						</div>
						<button onclick="myFunction('Demo17')"
							class="w3-button w3-block main-bar-color w3-left-align">
							충청북도</button>
						<div id="Demo17" class="w3-hide w3-container ">
							<button class="w3-button">청주시</button>
							<br>
							<button class="w3-button">충주시</button>
							<br>
							<button class="w3-button">제천시</button>
							<br>
							<button class="w3-button">보은군</button>
							<br>
							<button class="w3-button">옥천군</button>
							<br>
							<button class="w3-button">영동군</button>
							<br>
							<button class="w3-button">증평군</button>
							<br>
							<button class="w3-button">진천군</button>
							<br>
							<button class="w3-button">괴산군</button>
							<br>
							<button class="w3-button">음성군</button>
							<br>
							<button class="w3-button">단양군</button>
							<br>
						</div>
					</div>
				</div>
				<br>







				<!-- End Left Column -->
			</div>

			<!-- Middle Column -->
			<div class="w3-col m7">



				<div class="w3-container w3-card-2 w3-white w3-round w3-margin"
					id="attraction">
					<br>
					<h4>
						<Strong>관광명소</Strong>
					</h4>
					<br>

					<div>
						<c:forEach items="${sessionScope.attractionList}" var="data">
							<h4 style="text-align: center; color:#013366; font-weight: 900">${data.name}</h4>
							<div id="photo">
								<img id="inner" src="${data.photo}">
							</div>
							
				<!-- 			<script >
							var s = ${data.photo};
							$("#inner").att	("src",s);
							</script>
				 -->			
							<br>
							<hr class="w3-clear">
							<p>주소 : ${data.address}</p>
							<p>연락처 : ${data.phone}</p>
							<p>간략 내용 : ${data.contents}</p>
							<p>
								홈페이지 :<a href="${data.url}" target="blank"> ${data.url}</a><br>
							</p>
							<form name="form" id="form" onsubmit="return false">
									<button name="button" id="attraction"
									class="w3-button main-bar-color w3-margin-bottom"
									onclick='updateLikeList(this,"addLikeList","${data.cId}");'
									value="before">
									<i class="fa fa-thumbs-up"></i>&nbsp;Like
								</button>
							</form>
							<br>
							<hr>
							<br>
						</c:forEach>
					</div>
				</div>
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin"
					id="restaurant">
					<br>

					<h4>
						<Strong>추천맛집</Strong>
					</h4>
					<br>
					<div>
						<c:forEach items="${sessionScope.restaurantList}" var="data">
							<h4 style="text-align: center; color:#013366; font-weight: 900">${data.name}</h4>
							<div id="photo">
								<img id="inner" src="${data.photo}">
							</div>
							<br>
							<hr class="w3-clear">
							<p>
							<strong>연락처</strong> : ${data.phone}
							</p>
							<p>
								<strong>주소</strong> : ${data.address}
							</p>
							<p>
								<strong>메뉴</strong> : ${data.menu}</a><br>
							</p>
							<p>
								<strong>가격</strong> : ${data.price}
							</p>
							<form name="form" id="form" onsubmit="return false">


								<button name="button" id="restaurant"
									class="w3-button main-bar-color w3-margin-bottom"
									onclick='updateLikeList(this,"addLikeList","${data.cId}");'
									value="before">
									<i class="fa fa-thumbs-up"></i>&nbsp;Like
								</button>

							</form>

							<br>
							<hr>
							<br>
						</c:forEach>
					</div>

				</div>

				<div class="w3-container w3-card-2 w3-white w3-round w3-margin"
					id="festival">
					<br>
					<h4>
						<Strong>지역축제</Strong>
					</h4>
					<br>
					<div>
						<c:forEach items="${sessionScope.festivalList}" var="data">
							<h4 style="text-align: center; color:#013366; font-weight: 900">${data.name}</h4>
							<div id="photo">
								<img id="inner" src="${data.photo}">
							</div>
							<br>
							<hr class="w3-clear">
							<p>
								<strong>주소</strong> : ${data.address}
							</p>
							<p>
								<strong>기간</strong> : ${data.period}
							</p>
							<p>
								<strong>간략 내용</strong> : ${data.contents}
							</p>
							<p>
								<strong>홈페이지</strong> :<a href="${data.url}" target="blank">
									${data.url}</a><br>
							</p>
							<form name="form" id="form" onsubmit="return false">


								<button name="button" id="festival"
									class="w3-button main-bar-color w3-margin-bottom"
									onclick='updateLikeList(this,"addLikeList","${data.cId}");'
									value="before">
									<i class="fa fa-thumbs-up"></i>&nbsp;Like
								</button>

							</form>

							<br>
							<hr>
							<br>
						</c:forEach>
					</div>

				</div>

				<!-- End Middle Column -->
			</div>



			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
	</div>
	<br>

	<!-- Footer -->
	<footer class="w3-container w3-theme-d5">
		<p>두리번두리번 by 기혁, 윤헌, 동민, 세린</p>
	</footer>

	<script type="text/javascript">
		
		function updateLikeList(v1, v2, v3){
			if ($(v1).val() == "before") {
				$(v1).children().removeClass("fa fa-thumbs-up");
				$(v1).children().addClass("fa fa-thumbs-down");
				$(v1).children().text(" Dis");
				$(v1).val("after");
			} else {

				$(v1).children().removeClass("fa fa-thumbs-down");
				$(v1).children().addClass("fa fa-thumbs-up");
				$(v1).children().text(" ");
				$(v1).val("before");
			}
			
			
			
			$.ajax({
				url : "frontcontroller",
				data : {
					command : v2,
					value : $(v1).val(), //before,after
					allid : v3, //allid
					identity : $(v1).attr("id").substring(0,4) //identity
				},
				dataType : "html",
				method : "POST",
				
			});
		}
	</script>

	<%
		session.removeAttribute("attList");
	%>

</body>
</html>