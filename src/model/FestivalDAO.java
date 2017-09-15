package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.AttractionDTO;
import model.dto.FestivalDTO;
import model.util.DBUtil;

public class FestivalDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static FestivalDTO retrieveFestival(int aId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		FestivalDTO list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("retrieveFestival"));
			pstmt.setInt(1, aId);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				list = new FestivalDTO(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}

		return list;
	}
	
	public static ArrayList<FestivalDTO> festivalList(int cId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<FestivalDTO> list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("festivalList"));
			pstmt.setInt(1, cId);
			rset = pstmt.executeQuery();
			list = new ArrayList<FestivalDTO>();
			
			while (rset.next()) {
				list.add(new FestivalDTO(rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8)));
			}
		
		} finally {
			DBUtil.close(con, pstmt, rset);
		}

		return list;
	}
}
