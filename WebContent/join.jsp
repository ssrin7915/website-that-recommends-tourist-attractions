<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <meta name="viewport" content="width=device-width, initial-scale=1" />
   <link rel="stylesheet" href="assets/css/main.css" />
   <title>회원가입</title>
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
<body class="index">
      <div id="page-wrapper">

         <!-- Header -->
            <header id="header" class="alt" style="background-color:#e1e9f2; opacity:0.75">
               <h1 id="logo"><a href="index.jsp">두리번두리번 <span>by 기혁, 윤헌, 동민, 세린</span></a></h1>
               <nav id="nav">
                  <ul>
                     <li class="current"><a href="index.jsp">HOME</a></li>
                     <li><a onclick="document.getElementById('id01').style.display='block'" class="button special" style="width: auto;">Login</a></li>
                  </ul>
               </nav>
            </header>


         <!-- Main -->
            <article id="main">

               <header class="special container">
                  <span class="icon fa-envelope"></span>
                  <h2>Join us</h2>
                  <p>회원가입을 위해 아래 양식을 작성해주세요.</p>
               </header>

               <!-- One -->
                  <section class="wrapper style4 special container 75%" >

                     <!-- Content -->
                        <div class="content"  >
                           <form action="customercontroller?command=createCustomer" method="post">
                              <div class="row 50%">
                                 <div class="6u 12u(mobile)">
                                    <input type="text" id="inputid" name="id" placeholder="ID"  onblur="IdCheck()"/>
                                 </div>
                                 <div class="6u 12u(mobile)">
                                    <input type="password" name="pw" placeholder="Password" />
                                 </div>
                              </div>
                              <div class="row 50%">
                                 <div class="6u 12u(mobile)">
                                    <input type="text" name="name" placeholder="Name" />
                                 </div>
                                 <div class="6u 12u(mobile)">
                                    <select name="gender">
                                       <option value="">Gender</option>
                                       <option value="M">Male</option>
                                       <option value="F">Female</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="row 50%">
                                 <div class="12u">
                                    <input id="birth" type="text" name="birth" placeholder="Birth Date"  onfocus="onmouseEvent(this)" />
                                 </div>
                              </div>
                              <div class="row 50%">
                                 <div class="12u">
                                    <input type="number" name="phone" placeholder="Phone Number('-'없이 입력)" />
                                 </div>
                              </div>
                              <div class="row 50%">
                                 <div class="12u">
                                    <input type="email" name="email" placeholder="Email" />
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="12u">
                                    <ul class="buttons">
                                       <li><input type="submit" class="special" value="회원가입" /></li>
                                    </ul>
                                 </div>
                              </div>
                           </form>
                        </div>

                  </section>

      </div>
      </div>
      
      <div id="id01" class="modal">

      <form class="modal-content animate" action="customercontroller?command=checkIdPw" method="post">
         <div id="lfcon">
            <label><b>Username</b></label> <input type="text"
               placeholder="Enter Username" name="uname" required> <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw"
               required>

            <button id="ff" type="submit">Login</button>
         </div>

         <div id="lfcon" style="background-color: #f1f1f1">
            <button  type="button" id="ff"
               onclick="document.getElementById('id01').style.display='none'"
               class="cancelbtn">Cancel</button>
         </div>
      </form>
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
         <script>
            // Get the modal
            var modal = document.getElementById('id01');
            
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
                   //$("#birth").attr('type','date');
            }
            
            function onmouseEvent(v){
               if(v.id == "birth"){
                  v.type = "date";
               }
            }
            function IdCheck(){
               var check=document.getElementById("inputid").value;
               if(!check){
                  alert("아이디를 입력하세요");
               }
               else {
                   $.ajax({
                        url : "customercontroller",
                        data : {
                           command : "duplicateIdCheck",
                           checkid : check
                        },
                        dataType : "html",
                        method : "post",
                        success : function(result) {
                              alert(result);   
                              document.getElementById("demo").innerHTML =result;
                           }
                     });
               }
               
            }
            
         </script>
         

   </body>
</html>