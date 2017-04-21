package com.hb.guest.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class GuestDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public GuestDao() throws SQLException, NamingException {
		/*
		tomcat - context.xml
		
		maxActive - 최대 커넥션 객체(8)
		maxIdle - 평소 유지하는 최대 커넥션 객체(8)
		maxWait - 접속 대기 시간(-1)
		
		ex)
		<Resource name="jdbc/mysql" type="javax.sql.DataSource" 
		auth="Container" driverClassName="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/testdb" 
		username="scott" password="tiger" maxActive="10"
		maxIdle="8" maxWait="2000"
	 	/>
		
		
		*/
		Context cntxt=new InitialContext();
		DataSource ds=(DataSource) cntxt.lookup("java:comp/env/jdbc/mysql");
		conn=ds.getConnection();
	}
	public List<GuestDto> selectAll() throws SQLException {
		List<GuestDto> list=new ArrayList<GuestDto>();
		String sql="SELECT IDX,ID,SUB,CNT FROM GUEST05";
		try{
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			GuestDto bean = new GuestDto();
			bean.setIdx(rs.getInt("idx"));
			bean.setId(rs.getString("id"));
			bean.setSub(rs.getString("sub"));
			bean.setCnt(rs.getInt("cnt"));
			list.add(bean);
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
	public int insertOne(String sub, String user, String cntnt) throws SQLException {
		int result=0;
		String sql="insert into guest05 (sub,id,cntnt) ";
		sql+="values (?,?,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, user);
			pstmt.setString(3, cntnt);
			result=pstmt.executeUpdate();
		}finally{
			closeAll();
		}
		return result;
	}
	

}