package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;

/**
 * Servlet implementation class CustomerController
 */
public class CustomerController extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("euc-kr");
      String command = request.getParameter("command");
      
      
      try{
         if(command.equals("checkIdPw")){
            checkIdPw(request,response);
         }
         else if(command.equals("duplicateIdCheck")) {
            duplicateIdCheck(request,response);
         }
         else if(command.equals("createCustomer")) {
            createCustomer(request,response);
         }
         else if(command.equals("updateCustomer")) {
        	 updateCustomer(request,response);
         }
         else if(command.equals("leaveCustomer")) {
        	 leaveCustomer(request,response);
         }
         }catch(Exception s){
         request.setAttribute("errorMsg", s.getMessage());
         request.getRequestDispatcher("showError.jsp").forward(request, response);
         s.printStackTrace();
      }
   }

   public void checkIdPw(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
      String url = "error.jsp";
      try {
         boolean result=CustomerDAO.checkIdPw(request.getParameter("uname"), request.getParameter("psw"));
         if(result){
            HttpSession session = request.getSession();//세션 생성
            session.setAttribute("name", request.getParameter("uname")); 
            session.setAttribute("pw", request.getParameter("psw"));
            request.setAttribute("Msg","로그인 성공");
            url="loginsuccess.jsp";
         }
         else {
            request.setAttribute("Msg", "로그인 실패");
            url="joinplease.jsp";
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   public int duplicateIdCheck(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
      String url="error.jsp";
      System.out.println("duplicateidcheck");
      int result=0;
      try {
           result=CustomerDAO.duplicateIdCheck(request.getParameter("checkid"));
           response.setContentType("text/html;charset=euc-kr");
           PrintWriter out = response.getWriter();
           if(result==1) {
              out.println("중복 id입니다. id를 다시 입력해주세요.");
           }
           else {
              out.println("사용가능한 id입니다.");
           }
      } catch (Exception e) {
         e.printStackTrace();
      }
      //request.getRequestDispatcher(url).forward(request, response);
      return result;
   }
   public void createCustomer(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
      String url="error.jsp";
      try {
         System.out.println(request.getParameter("birth"));
           CustomerDAO.createCustomer(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"), request.getParameter("gender"), request.getParameter("birth"), request.getParameter("phone"), request.getParameter("email"));
           HttpSession session = request.getSession();//세션 생성
           session.setAttribute("name", request.getParameter("id")); 
           /* Cookie c1 = new Cookie("id", request.getParameter("id"));
           Cookie c2 = new Cookie("pw", request.getParameter("pw"));
            
            //쿠키 잔존 시간
            c1.setMaxAge(60*60*24*365);
            c2.setMaxAge(60*60*24*365);
            
            //client 시스템에 전송 저장
            response.addCookie(c1);
            response.addCookie(c2);
            */
           request.setAttribute("Msg", "회원가입이 완료되었습니다.");
           url="loginsuccess.jsp";
      } catch (Exception e) {
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   public void updateCustomer(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
	   String url = "error.jsp";
	   int result=0;
	      try {
	    	  HttpSession session = request.getSession();
	    	  result=CustomerDAO.updateCustomer(request.getParameter("pw"), request.getParameter("phone"),request.getParameter("email"),(String) session.getAttribute("name"));
	    	  session.setAttribute("pw", request.getParameter("pw"));
	    	  if(result==1){
	    		request.setAttribute("updateMsg", "회원정보가 성공적으로 수정되었습니다.");
	    		
	            url="mypage.jsp";
	      //      request.setAttribute("command", "retrieveList");
	         }
	    	  else {
	    		request.setAttribute("updateMsg", "업데이트 실패");
	            url="error.jsp";
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      request.getRequestDispatcher(url).forward(request, response);
   }

   public void leaveCustomer(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
	   String url = "error.jsp";
	   boolean result=false;
	      try {
	    	  HttpSession session = request.getSession();
	    	  result=CustomerDAO.leaveCustomer((String) session.getAttribute("name"));
	    	  if(result){
	    		request.setAttribute("byeMsg", "탈퇴가 완료되었습니다.");
	            url="index.jsp";
	         }
	    	  else {
	            url="error.jsp";
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      request.getRequestDispatcher(url).forward(request, response);
   }
	
 

   

}