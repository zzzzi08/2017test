package com.hb.pm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.dto.StuBean;
import com.hb.util.Mydb;

public class MyXML extends HttpServlet{

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		ArrayList<StuBean> list = new ArrayList<StuBean>();
		String sql="select num,kor,eng,math from stu02";
		try {
			conn = Mydb.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				StuBean bean = new StuBean();
				bean.setNum(rs.getInt(1));
				bean.setKor(rs.getInt(2));
				bean.setEng(rs.getInt(3));
				bean.setMath(rs.getInt(4));
				
				list.add(bean);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		resp.setContentType("text/xml");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		out.println("<students>");
		for(int i=0; i<list.size(); i++){
			StuBean stu=list.get(i);
		
		out.println("<student>");
		out.println("<num>"+stu.getNum()+"</num>");
		out.println("<kor>"+stu.getKor()+"</kor>");
		out.println("<eng>"+stu.getEng()+"</eng>");
		out.println("<math>"+stu.getMath()+"</math>");
		out.println("</student>");
		}
		out.println("</students>");
		
		out.close();
		
	}
}
