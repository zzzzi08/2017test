package com.hb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

import com.hb.util.MyDB;

public class Guest04Dao {
	Logger log = Logger.getLogger("com.hb.model.Guest04Dao");
	private String driver;
	private String url;
	private String user;
	private String password;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Guest04Dao() {
		driver="oracle.jdbc.driver.OracleDriver";
		url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		
		/*driver="com.mysql.jdbc.Driver";
		url="jdbc:mysql://localhost:3306/testdb";*/
		
		user="scott";
		password="tiger";
	}

	public List<Guest04DTO> selectAll() throws ClassNotFoundException, SQLException{
		String sql="SELECT * FROM GUEST04";
		List<Guest04DTO> list=new ArrayList<Guest04DTO>();
		try{
		conn=MyDB.getConnection(driver, url, user, password);
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Guest04DTO dto = new Guest04DTO(rs.getInt("sabun"),rs.getString("name"),rs.getString("sub"),rs.getDate("nalja"),rs.getInt("pay"));	
			
			list.add(dto);
//			list.add(new Guest04DTO(
//					rs.getInt("sabun")
//					,rs.getString("name")
//					,rs.getString("sub")
//					,rs.getDate("nalja")
//					,rs.getInt("pay")
//					));
			log.debug(dto);
			System.out.println(dto);
		}
		
		}finally{
			closeAll();
		}
		return list;
	}

	private void closeAll() throws SQLException {
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}

	public int insertOne(String name, String sub, int pay) throws ClassNotFoundException, SQLException {
		String sql = "insert into guest04 values (guest04_seq.nextval,?,?,sysdate,?)";
		int result=0;
		try{
			conn=MyDB.getConnection(driver,url,user,password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, sub);
			pstmt.setInt(3, pay);
			result=pstmt.executeUpdate();
			
		}finally{
			closeAll();
		}
		
		return result;
	}

	public Guest04DTO selectOne(int sabun) throws ClassNotFoundException, SQLException {
		String sql="select * from guest04 where sabun = ?";
		Guest04DTO bean = new Guest04DTO();
		
		try{
			conn=MyDB.getConnection(driver, url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		}finally{
			closeAll();
		}
		
		return bean;
	}

	public int updateOne(int sabun, String name, String sub, int pay) throws ClassNotFoundException, SQLException {
		String sql="update guest04 set name=? sub=?, pay=? where sabun=?";
		
		int cnt=0;
		
		try{
			conn=MyDB.getConnection(driver, url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, sub);
			pstmt.setInt(3, pay);
			pstmt.setInt(4, sabun);
		}finally{
			closeAll();
		}
		
		return cnt;
	}
	

}
