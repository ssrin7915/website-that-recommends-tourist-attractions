<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>È¸¿øÅ»Åð</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.1.0.js"></script> 

<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-3.1.1.js"></script>
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

#update {
	text-align: center;
	font-weight: 900;
	color: #303e45 !important;
}

#complete {
	font-weight: 900;
	color: white;
	background-color: #303e45 !important;
	border-style: initial;
	padding: 0.3em 0.5em 0.3em 0.5em;
}


</style>


</head>

<body class="w3-theme-l5" >
<!-- TopButton -->
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

<br>

<style>
      input[type=text], input[type=password],input[type=email],input[type=date],input[type=number],select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
         }
         
         /* Set a style for all buttons */
         label{
            color: #7c8081;
         }
         
         button#ff {
            background-color: #83d3c9;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
         }
         
         button:hover {
            opacity: 0.8;
         }
         
         /* Extra styles for the cancel button */
         .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #7c8081;
         }
         
         /* Center the image and position the close button */
         #lfcon {
            padding: 16px;
         }
         
         span.psw {
            float: right;
            padding-top: 16px;
         }
         
         /* The Modal (background) */
         .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
            padding-top: 60px;
         }
         
         /* Modal Content/Box */
         .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto;
            /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */
         }
         
         /* The Close Button (x) */
         .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
         }
         
         .close:hover, .close:focus {
            color: red;
            cursor: pointer;
         }
         
         /* Add Zoom Animation */
         .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s
         }
         
         @
         -webkit-keyframes animatezoom {
            from {-webkit-transform: scale(0)
         }
         
         to {
            -webkit-transform: scale(1)
         }
         
         }
         @
         keyframes animatezoom {
            from {transform: scale(0)
         }
         
         to {
            transform: scale(1)
         }
         
         } 
         
         /* Change styles for span and cancel button on extra small screens */
         @media screen and (max-width: 300px) {
            span.psw {
               display: block;
               float: none;
            }
            .cancelbtn {
               width: 100%;
            }
         } 
   </style>
</head>
<body>
<div id="leave page"></div>
	
	<br>
	<article id="main">

               <header class="special container">
                  <h3 id="update" style="color: #7c8081 !important">Á¤¸» Å»Åð¸¦ ¿øÇÏ¼¼¿ä?</h3>
                  <p id="update">Å»Åð¸¦ ¿øÇÏ½Ã¸é Å¬¸¯ÇÏ¼¼¿ä.</p>
               </header>

               <!-- One -->
                  <section class="wrapper style4 special container 100%" >

                     <!-- Content -->
                        <div class="content"  >
                        
                           <form action="customercontroller" method="post">
                           		<input type="hidden" name="command" value="leaveCustomer">
                              <div class="row 60%">
                                 <div class="6u 12u(mobile)">
                                    <input type="text" id="inputid" value="È¸¿öID : ${sessionScope.name}" readonly  placeholder="ID"  />
                                 </div>
                              </div>
                               <div class="row">
                                 <div class="12u" style="text-align: center;padding-bottom: 1em; padding-top: 1em;">
                                    <class="buttons">
                                     <input id="complete" type="submit" class="special"  value="Å»Åð" />
                                 </div>
                              </div>
                           </form>
                           
                        </div>

                  </section>
		
</body>
</html>
