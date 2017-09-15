package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.AttractionDTO;
import model.dto.RestaurantDTO;
import model.util.DBUtil;

public class RestaurantDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static RestaurantDTO retrieveRestaurant(int aId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		RestaurantDTO list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("retrieveRestaurant"));
			pstmt.setInt(1, aId);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				list = new RestaurantDTO(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getInt(7), rset.getString(8));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}

		return list;
	}
	
	public static ArrayList<RestaurantDTO> restaurantList(int cId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<RestaurantDTO> list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("restaurantList"));
			pstmt.setInt(1, cId);
			rset = pstmt.executeQuery();
			list = new ArrayList<RestaurantDTO>();
			
			while (rset.next()) {
				list.add(new RestaurantDTO(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getInt(7), rset.getString(8)));
			}
		
		} finally {
			DBUtil.close(con, pstmt, rset);
		}

		return list;
	}

}	
