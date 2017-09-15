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
            HttpSession session = request.getSession();//���� ����
            session.setAttribute("name", request.getParameter("uname")); 
            session.setAttribute("pw", request.getParameter("psw"));
            request.setAttribute("Msg","�α��� ����");
            url="loginsuccess.jsp";
         }
         else {
            request.setAttribute("Msg", "�α��� ����");
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
              out.println("�ߺ� id�Դϴ�. id�� �ٽ� �Է����ּ���.");
           }
           else {
              out.println("��밡���� id�Դϴ�.");
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
           HttpSession session = request.getSession();//���� ����
           session.setAttribute("name", request.getParameter("id")); 
           /* Cookie c1 = new Cookie("id", request.getParameter("id"));
           Cookie c2 = new Cookie("pw", request.getParameter("pw"));
            
            //��Ű ���� �ð�
            c1.setMaxAge(60*60*24*365);
            c2.setMaxAge(60*60*24*365);
            
            //client �ý��ۿ� ���� ����
            response.addCookie(c1);
            response.addCookie(c2);
            */
           request.setAttribute("Msg", "ȸ�������� �Ϸ�Ǿ����ϴ�.");
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
	    		request.setAttribute("updateMsg", "ȸ�������� ���������� �����Ǿ����ϴ�.");
	    		
	            url="mypage.jsp";
	      //      request.setAttribute("command", "retrieveList");
	         }
	    	  else {
	    		request.setAttribute("updateMsg", "������Ʈ ����");
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
	    		request.setAttribute("byeMsg", "Ż�� �Ϸ�Ǿ����ϴ�.");
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