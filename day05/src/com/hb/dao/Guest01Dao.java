package com.hb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.dto.Guest01Bean;
import com.hb.util.OraDb;

public class Guest01Dao {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public int selectCnt(){
		int cnt=0;
		String sql="select count(*) as cnt from guest01";
		conn=OraDb.getConnection();
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()){
				cnt=rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return cnt;
	}
	
	
	public ArrayList<Guest01Bean> selectAll(String keyword, int page, int viewcnt){
		ArrayList<Guest01Bean> list = new ArrayList<Guest01Bean>();
		int pStart=(page-1)*viewcnt+1;
		int pEnd=pStart+viewcnt-1;
		String sql="select * from ";
		sql+="(select rownum as rn, A.sabun, A.name, A.nalja, A.pay from ";
		sql+="(select * from guest01 where name like '%"+keyword;
		sql+="%' order by sabun desc)A )B ";
		sql+="where B.rn>="+pStart+" and B.rn<="+pEnd;
		
		conn=OraDb.getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Guest01Bean bean = new Guest01Bean();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		return list;
	}
	public ArrayList<Guest01Bean> selectAll(String keyword,String search){
		ArrayList<Guest01Bean> list = new ArrayList<Guest01Bean>();
		search = search.trim();
		String sql="select * from guest01 where "+keyword+" like '%"+search+"%'";
		System.out.println(sql);
		conn=OraDb.getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Guest01Bean bean = new Guest01Bean();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	public ArrayList<Guest01Bean> selectAll(){
		String sql="select * from guest01";
		ArrayList<Guest01Bean> list= new ArrayList<Guest01Bean>();
		conn=OraDb.getConnection();
		try {
			stmt = conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Guest01Bean bean = new Guest01Bean();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	public int insertOne(String name,int pay){
		int result=0;
		String sql="insert into guest01 values";
		sql+=" (guest01_seq.nextval,?,sysdate,?)";
		conn=OraDb.getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public Guest01Bean selectOne(int sabun){
		Guest01Bean bean = new Guest01Bean();
		String sql="select * from guest01 where sabun=?";
		conn=OraDb.getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		
		return bean;
	}
	
	public int updateOne(int sabun,String name,int pay){
		int result=0;
		String sql="update guest01 set name=?,pay=? where sabun=?";
		conn=OraDb.getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, sabun);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
}









