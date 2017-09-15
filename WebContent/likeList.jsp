<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="atrraction"></div>
	<h4>
		<Strong>�������</Strong>
	</h4>
	<br>
	<div>
		<c:forEach items="${sessionScope.attList}" var="data">
			<h4 style="text-align: center;">${data.name}</h4>
			<div id="photo">
				<img id="inner" src="${data.photo}">
			</div>
			<br>
			<hr class="w3-clear">
			<p><strong>�ּ�</strong> : ${data.address}</p>
			<p><strong>����ó</strong> : ${data.phone}</p>
			<p><strong>���� ����</strong> : ${data.contents}</p>
			<p><strong>Ȩ������</strong> :<a href = "${data.url}" target="blank"> ${data.url}</a><br></p>
		<!-- 	<form name="form" id="form" onsubmit="return false">
				<button name="button" id="attraction"
					class="w3-button main-bar-color w3-margin-bottom"
					onclick='changeValue(this);' value="before">
					<i class="fa fa-thumbs-up"></i>&nbsp;Like
				</button>
			</form> -->
			<br>
			<hr>
			<br>
		</c:forEach>
	</div>

	<div id="restaurant"></div>
	<h4>
		<Strong>��õ����</Strong>
	</h4>
	<br>
	<div>
		<c:forEach items="${sessionScope.resList}" var="data">
			<h4 style="text-align: center;">${data.name}</h4>
			<div id="photo">
				<img id="inner" src="${data.photo}">
			</div>
			<br>
			<hr class="w3-clear">
			<p><strong>����ó</strong> : ${data.phone}</p>
			<p><strong>�ּ�</strong> : ${data.address}</p>
			<p><strong>�޴�</strong> : ${data.menu}</a><br></p>
			<p><strong>����</strong> : ${data.price}</p>
		<!-- 	<form name="form" id="form" onsubmit="return false">
				<button name="button" id="attraction"
					class="w3-button main-bar-color w3-margin-bottom"
					onclick='changeValue(this);' value="before">
					<i class="fa fa-thumbs-up"></i>&nbsp;Like
				</button>
			</form> -->
			<br>
			<hr>
			<br>
		</c:forEach>
	</div>
	
	<div id="festival"></div>
	<h4>
		<Strong>��������</Strong>
	</h4>
	<br>
	<div>
		<c:forEach items="${sessionScope.fesList}" var="data">
			<h4 style="text-align: center;">${data.name}</h4>
			<div id="photo">
				<img id="inner" src="${data.photo}">
			</div>
			<br>
			<hr class="w3-clear">
			<p><strong>�ּ�</strong> : ${data.address}</p>
			<p><strong>�Ⱓ</strong> : ${data.period}</p>
			<p><strong>���� ����</strong> : ${data.contents}</p>
			<p><strong>Ȩ������</strong> :<a href = "${data.url}" target="blank"> ${data.url}</a><br></p>
		<!-- 	<form name="form" id="form" onsubmit="return false">
				<button name="button" id="attraction"
					class="w3-button main-bar-color w3-margin-bottom"
					onclick='changeValue(this);' value="before">
					<i class="fa fa-thumbs-up"></i>&nbsp;Like
				</button>
			</form> -->
			<br>
			<hr>
			<br>
		</c:forEach>
	</div>
	<script type="text/javascript">
			function changeValue(v) {

				if ($(v).val() == "before") {

					$(v).children().removeClass("fa fa-thumbs-up");
					$(v).children().addClass("fa fa-thumbs-down");
					$(v).children().text(" Dis");
					$(v).val("after");
				} else {

					$(v).children().removeClass("fa fa-thumbs-down");
					$(v).children().addClass("fa fa-thumbs-up");
					$(v).children().text(" ");
					$(v).val("before");
				}
			}
		</script>
<%-- 	<%
		session.removeAttribute("attList");
		session.removeAttribute("resList");
		session.removeAttribute("fesList");
	%>
 --%>
</body>
</html>