package com.hb.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.user.model.UserDao;

@WebServlet("/user/idchk.hb")
public class CheckId extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		boolean result=false;
		String id=req.getParameter("id");
		
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/testdb";
		String user="scott";
		String password="tiger";
		try {
			UserDao dao = new UserDao(driver,url,user,password);
			result=dao.checkId(id);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
//		{chk:[{result:true}]}
		String msg="{\"chk\":[{\"result\":"+result+"}]}";
		System.out.println(msg);
		resp.setContentType("application/json; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.close();
	}
}








