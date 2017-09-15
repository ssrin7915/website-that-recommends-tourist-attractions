<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>패스워드 재확인</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/city.js"></script>
<script type="text/javascript">

function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == "") {
        alert("Password must be filled out");
        return false;
    }
   
}
$("#your_page_nav _buttonid").click(
		function()
		{
		 $( "#dialogui" ).dialog();
		}
		);


</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/w3-theme-blue-grey.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,900">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	
	<div align="center" class="w3-container w3-white w3-round w3-margin" id="view">
	본인확인을 위해 패스워드를 입력하세요
	<form name="myForm"  
	onsubmit="return!! (validateForm()&selectMyView2('${requestScope.value}'))" method="post">
	password: <input type="text" name="fname" >
	<input type="submit" value="Submit" class="w3-button main-bar-color w3-margin-bottom">
	</form>
	</div>
</body>
</html>