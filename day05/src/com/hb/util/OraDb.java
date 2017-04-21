package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;

import oracle.jdbc.OracleDriver;

public class OraDb {
	private static Connection conn;
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";
	
	
	private OraDb() {
	}
	
	public static Connection getConnection(){
		try{
			if(conn==null || conn.isClosed()){
				DriverManager.registerDriver(new OracleDriver());
				conn=DriverManager.getConnection(url, user, password);
			}
		}catch(Exception ex){			
		}
		
		return conn;
	}
}
