package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dto.AttractionDTO;
import model.dto.FestivalDTO;
import model.dto.LikeListDTO;
import model.dto.ListService;
import model.dto.RestaurantDTO;

public class FrontController extends HttpServlet {
	HttpSession session;
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session = request.getSession();

		process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String command = request.getParameter("command");
		if (command == null) {
			command = "retrieveList";
		}

		try {
			if (command.equals("placeList")) {
				placeList(request, response);
				restaurantList(request, response);
				festivalList(request, response);
			} else if (command.equals("addLikeList")) {
				addLikeList(request, response);
			} else if (command.equals("retrieveList")) {
				retrieveList(request, response);
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			request.getRequestDispatcher("showError.jsp").forward(request, response);
			s.printStackTrace();

		}

		try {

			if (command.equals("likeList")) {// 모든 probono project 정보 검색
				likeList(request, response);
			} else if (command.equals("confirmpw")) {
				confirm(request, response);
			} else if (command.equals("update")) {
				update(request, response);
			} else if (command.equals("leave")) {
				leave(request, response);
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			request.getRequestDispatcher("showError.jsp").forward(request, response);
			s.printStackTrace();
		}
	}

	public void retrieveList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		ArrayList<LikeListDTO> list = null;
		ArrayList<AttractionDTO> attList = null;
		ArrayList<RestaurantDTO> resList = null;
		ArrayList<FestivalDTO> fesList = null;
		
		try {
			list = ListService.retrieveList((String)session.getAttribute("name"));

			attList = new ArrayList<AttractionDTO>();
			resList = new ArrayList<RestaurantDTO>();
			fesList = new ArrayList<FestivalDTO>();
			for (int i = 0; i < list.size(); ++i) {
				if(list.get(i).getIdentity().equals("attr")){
					attList.add(ListService.retrieveAttraction(list.get(i).getAllId())); // 리스트에서 attraction관련된 정보들 하나씩 가져와서 추가
				}else if(list.get(i).getIdentity().equals("rest")){
					resList.add(ListService.retrieveRestaurant(list.get(i).getAllId()));
				}else if(list.get(i).getIdentity().equals("fest")){
					fesList.add(ListService.retrieveFestival(list.get(i).getAllId()));
				}
			}
			url = "mypage.jsp";
		
			
			session.setAttribute("attList", attList);
			session.setAttribute("resList", resList);
			session.setAttribute("fesList", fesList);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void addLikeList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
		String mid = (String)session.getAttribute("name");
		String allid = request.getParameter("allid");
		String identity = (String)request.getParameter("identity");
		String url = "error.jsp";
		boolean tf = false;
		
		try {
			session.setAttribute("value", request.getParameter("value"));
			
			if(request.getParameter("value").equals("after")){
				tf = ListService.addLikeList(mid, Integer.parseInt(allid),
						identity);
			} else {
				tf = ListService.delLikeList(mid, Integer.parseInt(allid),
						identity);
			}
			if (tf == true) {
				url = "likeList.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void restaurantList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		ArrayList<RestaurantDTO> list = null;
		try {
			list = ListService.restaurantList(Integer.parseInt(request.getParameter("cId"))); // 임의로 1집어넣음
		
			
			session.setAttribute("restaurantList", list);
		//	url = "city.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
	//	request.getRequestDispatcher(url).forward(request, response);
	}
	
	public void festivalList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		ArrayList<FestivalDTO> list = null;
		try {
			list = ListService.festivalList(Integer.parseInt(request.getParameter("cId"))); // 임의로 1집어넣음
			
			
			session.setAttribute("festivalList", list);
			url = "city.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	public void placeList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		ArrayList<AttractionDTO> list = null;
		try {
			list = ListService.placeList(Integer.parseInt(request.getParameter("cId"))); // 임의로 1집어넣음
	
			
			session.setAttribute("attractionList", list);
		//	url = "city.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
	//	request.getRequestDispatcher(url).forward(request, response);
	}

	public void likeList(HttpServletRequest request, HttpServletResponse response) {

		String url = "likeList.jsp";

		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void confirm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("value",request.getParameter("value"));
		String url = "confirmpw.jsp";

		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void update(HttpServletRequest request, HttpServletResponse response) {

		String url = "updatepage.jsp";

		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void leave(HttpServletRequest request, HttpServletResponse response) {

		String url = "leave.jsp";

		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

