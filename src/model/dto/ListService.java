package model.dto;

import java.util.ArrayList;

import model.AttractionDAO;
import model.CustomerDAO;
import model.FestivalDAO;
import model.RestaurantDAO;

public class ListService {
	
	public static ArrayList<LikeListDTO> retrieveList(String mId) throws Exception {
		ArrayList<LikeListDTO> list = null;
		try {
			list = AttractionDAO.retrieveList(mId);
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static boolean addLikeList(String mid, int allid, String identity) throws Exception {
		return AttractionDAO.addLikeList(mid, allid, identity);
	}
	public static boolean delLikeList(String mid, int allid, String identity) throws Exception {
		return AttractionDAO.deleteList(mid, allid, identity);
	}
	public static ArrayList<AttractionDTO> placeList(int cId) throws Exception {
		return AttractionDAO.placeList(cId);
	}
	
	public static boolean checkIdPw(String mId, String password)  throws Exception{
			return CustomerDAO.checkIdPw(mId, password);
	}
	
	public static AttractionDTO retrieveAttraction(int aId) throws Exception{
		return AttractionDAO.retrieveAtrraction(aId);
	}
	
	public static RestaurantDTO retrieveRestaurant(int aId) throws Exception{
		return RestaurantDAO.retrieveRestaurant(aId);
	}
	
	public static FestivalDTO retrieveFestival(int aId) throws Exception{
		return FestivalDAO.retrieveFestival(aId);
	}
	
	public static ArrayList<RestaurantDTO> restaurantList(int cId) throws Exception{
		return RestaurantDAO.restaurantList(cId);
	}

	public static ArrayList<FestivalDTO> festivalList(int cId) throws Exception{
		return FestivalDAO.festivalList(cId);
	}
}
