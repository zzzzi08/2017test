package com.hb.test;

import java.sql.Connection;
import java.sql.SQLException;

import com.hb.util.MyDB;

public class TestConnection {

	public static void main(String[] args) {

		Connection conn=null;
		Connection conn2=null;
		
		try {
			conn=MyDB.getConnection();
			
			System.out.println(conn!=null);
			System.out.println(!(conn.isClosed()));
			
			conn2=MyDB.getConnection();
			System.out.println(conn==conn2);
			conn.close();
			System.out.println(conn2.isClosed());
			conn=MyDB.getConnection();
			System.out.println(!(conn.isClosed()));
			System.out.println(conn2.isClosed());
			System.out.println((conn!=conn2));
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
