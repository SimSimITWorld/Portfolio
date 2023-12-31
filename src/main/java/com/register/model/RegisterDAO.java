package com.register.model;

import java.sql.*;

public class RegisterDAO {
	
	private static RegisterDAO instance = null;
	
	public RegisterDAO() {}
	
	public static RegisterDAO getInstance() {
		
		if(instance == null) {
			synchronized (RegisterDAO.class) {
				instance = new RegisterDAO();
			}
		}
		return instance;
	}
	
	public int register(RegisterVO join) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO PORTFOLIO_MEMBER VALUES (?, ?, ?)";
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, join.getId());
			pstmt.setString(2, join.getPassword());
			pstmt.setString(3, join.getNickname());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(conn!=null) {conn.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return -1;
	}
	
}
