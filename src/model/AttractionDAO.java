package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.AttractionDTO;
import model.dto.LikeListDTO;
import model.util.DBUtil;

public class AttractionDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();

	public static boolean deleteList(String mid, int allid, String identity) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("deleteLikeList"));
			pstmt.setString(1, mid);
			pstmt.setInt(2, allid);
			pstmt.setString(3, identity);
			result = pstmt.executeUpdate();
			
			if(result == 1){
				return true;
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static ArrayList<LikeListDTO> retrieveList(String mId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<LikeListDTO> list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("retrieveList"));
			pstmt.setString(1, mId);
			rset = pstmt.executeQuery();

			list = new ArrayList<LikeListDTO>();
			while (rset.next()) {
				list.add(new LikeListDTO(rset.getString(1), Integer.parseInt(rset.getString(2)), rset.getString(3)));
			}

		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return list;
	}

	public static boolean addLikeList(String mid, int allid, String identity) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("addLikeList"));
			pstmt.setString(1, mid);
			pstmt.setInt(2, allid);
			pstmt.setString(3, identity);
			result = pstmt.executeUpdate();
			System.out.println(result);
			if(result == 1){
				return true;
			}
		}finally{
			DBUtil.close(con, 	pstmt);
		}
		
		return false;
	}

	public static ArrayList<AttractionDTO> placeList(int cId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AttractionDTO> list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("placeList"));
			pstmt.setInt(1, cId);
			rset = pstmt.executeQuery();
			list = new ArrayList<AttractionDTO>();
			
			while (rset.next()) {
				list.add(new AttractionDTO(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8)));
			}
		
		} finally {
			DBUtil.close(con, pstmt, rset);
		}

		return list;
	}

	public static AttractionDTO retrieveAtrraction(int aId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		AttractionDTO list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("retrieveAttraction"));
			pstmt.setInt(1, aId);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				list = new AttractionDTO(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}

		return list;
	}
}
