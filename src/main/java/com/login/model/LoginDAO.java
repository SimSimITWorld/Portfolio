package com.login.model;

import java.sql.*;

public class LoginDAO {

	private static LoginDAO instance = null;
	
	public LoginDAO() {}
	
	public static LoginDAO getInstance() {
		
		if(instance == null) {
			synchronized (LoginDAO.class) {
				instance = new LoginDAO();
			}
		}
		return instance;
	}
	
	public int Login(LoginVO login, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT PASSWORD FROM PORTFOLIO_MEMBER WHERE ID=?";
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, login.getId());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {
					return 1;	// ログイン成功
				}else {
					return 0;	// パスワード不一致
				}
			}
			return -1;	// IDなし
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(conn!=null) {conn.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return -2;	// データベースエラー
	}
	
	public String Nickname(LoginVO login) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT NICKNAME FROM PORTFOLIO_MEMBER WHERE ID=?";
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, login.getId());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return login.getNickname();
			}
			return null;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(conn!=null) {conn.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return null;
	}
	
}
