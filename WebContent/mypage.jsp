<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<% 
if(request.getAttribute("updateMsg") != null){
String msg=(String)request.getAttribute("updateMsg");
if(msg.equals("회원정보가 성공적으로 수정되었습니다.")){
out.println("<script>alert('"+msg +"')</script>");	
}	
}
%>
<head><title>나의 정보</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/city.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/w3-theme-blue-grey.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,900">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">



html,body,h1,h2,h3,h4,h5 {font-family: FontAwesome}


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

#imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
    font-size: small;
    color: #303e45 !important;
}

img.avatar {
    width: 70%;
    border-radius: 50%;
}

#blue{
	 text-align: center;
	 font-weight: 900;
	 color:white;
	 background-color: #303e45 !important;
}

</style>


</head>

<body class="w3-theme-l5" >
<!-- TopButton -->
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<!-- Navbar -->
<div class="w3-top" >
 <div class="w3-bar w3-left-align w3-large main-bar-color">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <c:if test="${sessionScope.name != null}">
  <a href="loginsuccess.jsp" class="w3-bar-item w3-button w3-padding-large main-bar-color w3-hover-white"><i class="fa fa-home w3-margin-right"></i><strong>HOME</strong></a>
  </c:if>
  
  <c:if test="${sessionScope.name == null}">
  <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large main-bar-color w3-hover-white"><i class="fa fa-home w3-margin-right"></i><strong>HOME</strong></a>
  </c:if>
  <div class="w3-right w3-hide-small">
	  <a href="frontcontroller?command=retrieveList" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><Strong>관광명소</Strong></a>
	  <a href="#restaurant" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><Strong>추천맛집</Strong></a>
	  <a href="#festival" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><Strong>지역축제</Strong></a>
  	<a href="logout.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><Strong>LOGOUT</Strong></a>
  </div>
 </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large w3-show">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#attraction" class="w3-bar-item w3-button w3-padding-large"><Strong>관광명소</Strong></a>
  <a href="#restaurant" class="w3-bar-item w3-button w3-padding-large"><Strong>추천맛집</Strong></a>
  <a href="#festival" class="w3-bar-item w3-button w3-padding-large"><Strong>지역축제</Strong></a>
  <a href="logout.jsp" class="w3-bar-item w3-button w3-padding-large"><Strong>LOGOUT</Strong></a>
</div>
<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column --> 
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white" style="margin-top: 2em;">
        	<div id="blue">My Page</div>
        	<div id="imgcontainer"><img src="images/male.png" class="avatar">
        		<p style="font-weight: 900">${sessionScope.name}님, 환영합니다.</p>
        	</div>
        	
      </div>
      <br>
      <!-- Accordion -->
      <div class="w3-card-2 w3-round" style="font-weight: 900">
        <div class="w3-white">
          <button onclick='selectMyView("likeList")' class="w3-button w3-block main-bar-color w3-left-align w3-hover-white"> 좋아요 목록</button>
          <button onclick='pwInput(this)' value = "update" class="w3-button w3-block main-bar-color w3-left-align w3-hover-white"> 나의 정보 수정</button>
          <button onclick='pwInput(this)' value = "leave" class="w3-button w3-block main-bar-color w3-left-align w3-hover-white"> 회원 탈퇴</button>
          
        </div>      
      </div>
      <br>
      
     
    
      
      
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
     <div class="w3-col m7">
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin" id="view"></div>
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
 
<script>

//시작할때 Likelist default로 보여주는 문법
$(document).ready(function(){

    $("#view").load("likeList.jsp");

});
</script>

<script type="text/javascript">
      function pwInput(req){//update or leave
    	  var tagView = "<div align='center' class='w3-container w3-white w3-round w3-margin' id='view' style='font-weight:900'>본인확인을 위해 패스워드를 입력하세요<br>"
    	  					+ "password: <input type='text' name='fname' id='pwValue'><input type='hidden' id='command' value='"+req.value+"'>"
    	  					+ "<button class='w3-button main-bar-color w3-margin-bottom' onclick='validateForm()' style=' margin-left: 1em;margin-top: 5px; font-size: small;padding-top: 4px;padding-bottom: 4px;margin-bottom: 8px !important; background-color: #303e45 !important;'>확인</button></div>";
    	  document.getElementById("view").innerHTML = tagView;
      }
      
      
      function validateForm() {
    	  var command = document.getElementById("command").value;
    	    var pw = document.getElementById("pwValue").value;
    	    if (pw == "") {
    	        alert("패스워드를 입력해주세요.");
    	        return false;
    	    } else if (pw != "${sessionScope.pw}"){
    			alert("패스워드가 일치하지 않습니다.");
    			return false;
    		} else if (command == "update"){
    			// 비동기로 입력 받은  update인 경우 update.jsp가 div에 출력
    			$.ajax({
    				url : "frontcontroller",
    				data : {
    					command : command
    				},
    				dataType : "html",
    				success : function(result) {
    					$("#view").html(result);
    				}
    			});
    			
    		} else if (command == "leave"){
    			// 비동기로 입력 받은  leave인 경우 leave.jsp가 div에 출력
    			$.ajax({
    				url : "frontcontroller",
    				data : {
    					command : command
    				},
    				dataType : "html",
    				success : function(result) {
    					$("#view").html(result);
    				}
    			});
    			
    		} 
      }
      
      
      </script>
</body>
</html> 
