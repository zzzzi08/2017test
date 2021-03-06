package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDB {
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";
	private static Connection conn;
	
	private MyDB() {
	}
	
	public static Connection getConnection() {
		
		try {
			if(conn==null || conn.isClosed()){
				Class.forName(driver);
				conn=DriverManager.getConnection(url, user, password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}