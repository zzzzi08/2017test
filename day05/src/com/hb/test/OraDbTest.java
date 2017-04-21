//Oracle Singleton Test
package com.hb.test;

import java.sql.Connection;
import java.sql.SQLException;

import com.hb.util.OraDb;

public class OraDbTest {

	public static void main(String[] args) {
		System.out.println("OraDb test start");
		Connection conn = OraDb.getConnection();
		if(conn!=null){
			System.out.println("test success");
		}else{
			System.out.println("fest failure");
		}
		try{
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		System.out.print("conn is not null : ");
		System.out.println(conn!=null);
		try {
			System.out.println("conn is closed : "+conn.isClosed());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Connection conn2 = OraDb.getConnection();
		System.out.println("conn & conn2 different : "+(conn!=conn2));
		Connection conn3 = OraDb.getConnection();
		System.out.println("conn2 & conn3 different : "+(conn2!=conn3));

	}

}
