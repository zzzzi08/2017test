package com.hb.test;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import com.hb.util.MyOracle;

public class TestMyOracle {
	
	@Test
	public void testGetConnection() throws ClassNotFoundException, SQLException{
		Connection conn=MyOracle.getConnection();
		org.junit.Assert.assertNotNull(conn);	//not Null인지 검사
		org.junit.Assert.assertTrue(!conn.isClosed()); //(!conn.isClosed())가 true인지 검사
		org.junit.Assert.assertFalse(conn.isClosed());
		
	}
	
	@Test
	public void testGetConnection2() throws ClassNotFoundException, SQLException{
		Connection conn=MyOracle.getConnection();
		Connection conn2=MyOracle.getConnection();
		org.junit.Assert.assertSame(conn, conn2);	//conn==conn2 검사
		conn.close();
		org.junit.Assert.assertTrue(conn2.isClosed()); 
		conn=MyOracle.getConnection();
		org.junit.Assert.assertFalse(conn.isClosed()); 
		org.junit.Assert.assertTrue(conn2.isClosed()); 
		org.junit.Assert.assertNotSame(conn, conn2);
		
		
	}
}
