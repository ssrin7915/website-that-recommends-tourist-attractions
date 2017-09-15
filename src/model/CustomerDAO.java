package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;

import model.util.DBUtil;

public class CustomerDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();

	public static boolean checkIdPw(String mId, String password) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("checkIdPw"));
			pstmt.setString(1, mId);
			pstmt.setString(2, password);

			result = pstmt.executeUpdate();
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return false;
	}

	public static int duplicateIdCheck(String mId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("duplicateIdCheck"));
			pstmt.setString(1, mId);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				return 1;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return 0;

	}

	public static boolean createCustomer(String mId, String password, String name, String phone, String birth,
			String email, String gender) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("createCustomer"));
			pstmt.setString(1, mId);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, birth);
			pstmt.setString(6, email);
			pstmt.setString(7, gender);
			result = pstmt.executeUpdate();

			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return false;
	}

	public static boolean leaveCustomer(String mId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("leaveCustomer"));
			pstmt.setString(1, mId);
			result = pstmt.executeUpdate();
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return false;
	}

	public static int updateCustomer(String password, String phone, String email,String Mid) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("updateCustomer"));
			pstmt.setString(1, password);
			pstmt.setString(2, phone);
			pstmt.setString(3, email);
			pstmt.setString(4, Mid);
			result = pstmt.executeUpdate();
			
			
		} finally {
			DBUtil.close(con, pstmt);
		}

		return result;
	}
}
