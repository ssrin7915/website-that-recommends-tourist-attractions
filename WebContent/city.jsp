<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>�󼼰˻�</title>
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
				<!-- login���¿��� homeŰ ������ �� login���� ���� ���� mypage�� ���� ���� -->
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
					title="News"><Strong>�������</Strong></a> <a href="#restaurant"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Account Settings"><Strong>��õ����</Strong></a> <a
					href="#festival"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
					title="Messages"><Strong>��������</Strong></a> 
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
			class="w3-bar-item w3-button w3-padding-large"><Strong>�������</Strong></a>
		<a href="#restaurant" class="w3-bar-item w3-button w3-padding-large"><Strong>��õ����</Strong></a>
		<a href="#festival" class="w3-bar-item w3-button w3-padding-large"><Strong>��������</Strong></a>
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
							������</button>
						<div id="Demo1" class="w3-hide w3-container">
							<button class="w3-button"
								onclick="location.href='frontcontroller?command=placeList&cId=7'">
								������</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">���ؽ�</button>
							<br>
							<button class="w3-button">�¹��</button>
							<br>
							<button class="w3-button">���ʽ�</button>
							<br>
							<button class="w3-button">��ô��</button>
							<br>
							<button class="w3-button">ȫõ��</button>
							<br>
							<button class="w3-button">Ⱦ����</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">��â��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">ö����</button>
							<br>
							<button class="w3-button">ȸõ��</button>
							<br>
							<button class="w3-button">�籸��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">��籺</button>
							<br>
						</div>
						<button onclick="myFunction('Demo2')"
							class="w3-button w3-block main-bar-color w3-left-align">
							��⵵</button>
						<div id="Demo2" class="w3-hide w3-container ">
							<button class="w3-button"
								onclick="location.href='frontcontroller?command=placeList&cId=6'">���ֽ�</button>
							<br>
							<button class="w3-button">�����ν�</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�Ⱦ��</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">���ý�</button>
							<br>
							<button class="w3-button">����õ��</button>
							<br>
							<button class="w3-button">�Ȼ��</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�����ֽ�</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">�ǿս�</button>
							<br>
							<button class="w3-button">�ϳ���</button>
							<br>
							<button class="w3-button">���ν�</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">�ȼ���</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">ȭ����</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">����</button>
							<br>
						</div>
						<button onclick="myFunction('Demo3')"
							class="w3-button w3-block main-bar-color w3-left-align">
							��󳲵�</button>
						<div id="Demo3" class="w3-hide w3-container">
							<button class="w3-button">â����</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">�뿵��</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">���ؽ�</button>
							<br>
							<button class="w3-button">�о��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">�Ƿɱ�</button>
							<br>
							<button class="w3-button">�Ծȱ�</button>
							<br>
							<button class="w3-button">â�籺</button>
							<br>
							<button class="w3-button">���ر�</button>
							<br>
							<button class="w3-button">�ϵ���</button>
							<br>
							<button class="w3-button">��û��</button>
							<br>
							<button class="w3-button">�Ծ籺</button>
							<br>
							<button class="w3-button">��â��</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
						</div>
						<button onclick="myFunction('Demo4')"
							class="w3-button w3-block main-bar-color w3-left-align">
							���ϵ�</button>
						<div id="Demo4" class="w3-hide w3-container ">
							<button class="w3-button">���׽�</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">�ȵ���</button>
							<br>
							<button class="w3-button">���̽�</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�Ǽ���</button>
							<br>
							<button class="w3-button">û�۱�</button>
							<br>
							<button class="w3-button">���籺</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">û����</button>
							<br>
							<button class="w3-button">��ɱ�</button>
							<br>
							<button class="w3-button">���ֱ�</button>
							<br>
							<button class="w3-button">ĥ�</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">��ȭ��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�︪��</button>
							<br>
						</div>
						<button
							onclick="myFunction('Demo10');location.href='frontcontroller?command=placeList&cId=5'"
							class="w3-button w3-block main-bar-color w3-left-align">
							���ֱ�����</button>
						<div id="Demo10" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo5');location.href='frontcontroller?command=placeList&cId=3'"
							class="w3-button w3-block main-bar-color w3-left-align">
							�뱸������</button>
						<div id="Demo5" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo6');location.href='frontcontroller?command=placeList&cId=8'"
							class="w3-button w3-block main-bar-color w3-left-align">
							����������</button>
						<div id="Demo6" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo7');location.href='frontcontroller?command=placeList&cId=4'"
							class="w3-button w3-block main-bar-color w3-left-align">
							�λ걤����</button>
						<div id="Demo7" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo8');location.href='frontcontroller?command=placeList&cId=1'"
							class="w3-button w3-block main-bar-color w3-left-align">
							����Ư����</button>
						<div id="Demo8" class="w3-hide w3-container"></div>
						<button onclick="myFunction('Demo9')"
							class="w3-button w3-block main-bar-color w3-left-align">
							����Ư����ġ��</button>
						<div id="Demo9" class="w3-hide w3-container"></div>
						<button onclick="myFunction('Demo15');"
							class="w3-button w3-block main-bar-color w3-left-align">
							��걤����</button>
						<div id="Demo15" class="w3-hide w3-container"></div>
						<button
							onclick="myFunction('Demo11');location.href='frontcontroller?command=placeList&cId=2'"
							class="w3-button w3-block main-bar-color w3-left-align">
							��õ������</button>
						<div id="Demo11" class="w3-hide w3-container"></div>
						<button onclick="myFunction('Demo12')"
							class="w3-button w3-block main-bar-color w3-left-align">
							���󳲵�</button>
						<div id="Demo12" class="w3-hide w3-container ">
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">��籺</button>
							<br>
							<button class="w3-button">���</button>
							<br>
							<button class="w3-button">���ʱ�</button>
							<br>
							<button class="w3-button">���ﱺ</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">ȭ����</button>
							<br>
							<button class="w3-button">���ﱺ</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�س���</button>
							<br>
							<button class="w3-button">���ϱ�</button>
							<br>
							<button class="w3-button">���ȱ�</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�强��</button>
							<br>
							<button class="w3-button">�ϵ���</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�žȱ�</button>
							<br>
						</div>
						<button onclick="myFunction('Demo13')"
							class="w3-button w3-block main-bar-color w3-left-align">
							����ϵ�</button>
						<div id="Demo13" class="w3-hide w3-container ">
							<button class="w3-button"
								onclick="location.href='frontcontroller?command=placeList&cId=9'">���ֽ�</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">�ͻ��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">���ֱ�</button>
							<br>
							<button class="w3-button">���ȱ�</button>
							<br>
							<button class="w3-button">���ֱ�</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">�ӻ챺</button>
							<br>
							<button class="w3-button">��â��</button>
							<br>
							<button class="w3-button">��â��</button>
							<br>
							<button class="w3-button">�ξȱ�</button>
							<br>
						</div>
						<button onclick="myFunction('Demo14')"
							class="w3-button w3-block main-bar-color w3-left-align">
							���ֵ�</button>
						<div id="Demo14" class="w3-hide w3-container ">
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">��������</button>
							<br>
						</div>
						<button onclick="myFunction('Demo16')"
							class="w3-button w3-block main-bar-color w3-left-align">
							��û����</button>
						<div id="Demo16" class="w3-hide w3-container ">
							<button class="w3-button">õ�Ƚ�</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">���ɽ�</button>
							<br>
							<button class="w3-button">�ƻ��</button>
							<br>
							<button class="w3-button">�����</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�ݻ걺</button>
							<br>
							<button class="w3-button">�ο���</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">û�籺</button>
							<br>
							<button class="w3-button">ȫ����</button>
							<br>
							<button class="w3-button">���걺</button>
							<br>
							<button class="w3-button">�¾ȱ�</button>
							<br>
						</div>
						<button onclick="myFunction('Demo17')"
							class="w3-button w3-block main-bar-color w3-left-align">
							��û�ϵ�</button>
						<div id="Demo17" class="w3-hide w3-container ">
							<button class="w3-button">û�ֽ�</button>
							<br>
							<button class="w3-button">���ֽ�</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">����</button>
							<br>
							<button class="w3-button">��õ��</button>
							<br>
							<button class="w3-button">���걺</button>
							<br>
							<button class="w3-button">������</button>
							<br>
							<button class="w3-button">�ܾ籺</button>
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
						<Strong>�������</Strong>
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
							<p>�ּ� : ${data.address}</p>
							<p>����ó : ${data.phone}</p>
							<p>���� ���� : ${data.contents}</p>
							<p>
								Ȩ������ :<a href="${data.url}" target="blank"> ${data.url}</a><br>
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
						<Strong>��õ����</Strong>
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
							<strong>����ó</strong> : ${data.phone}
							</p>
							<p>
								<strong>�ּ�</strong> : ${data.address}
							</p>
							<p>
								<strong>�޴�</strong> : ${data.menu}</a><br>
							</p>
							<p>
								<strong>����</strong> : ${data.price}
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
						<Strong>��������</Strong>
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
								<strong>�ּ�</strong> : ${data.address}
							</p>
							<p>
								<strong>�Ⱓ</strong> : ${data.period}
							</p>
							<p>
								<strong>���� ����</strong> : ${data.contents}
							</p>
							<p>
								<strong>Ȩ������</strong> :<a href="${data.url}" target="blank">
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
		<p>�θ����θ��� by ����, ����, ����, ����</p>
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