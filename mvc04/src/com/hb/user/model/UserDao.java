package com.hb.user.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDao(String driver,String url, String user, String password) throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);		
	}

	public int selectChk(String id, String pw) throws SQLException {
		int cnt=0;
		String sql="select count(*) as cnt ";
		sql+="from guest05_user where id=? and pw=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs=pstmt.executeQuery();
			if(rs.next()){
				cnt=rs.getInt("cnt");
			}
				
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return cnt;
	}

	public boolean checkId(String id) throws SQLException {
		boolean result=false;
		String sql="select count(*) from guest05_user where id=?";
		try{
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			if(rs.getInt(1)>0)result=true;
		}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}

	public int insertOne(String id, String pw, String email) throws SQLException {
		int result=0;
		String sql="insert into guest05_user values (?,?,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, email);
			result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}

}














