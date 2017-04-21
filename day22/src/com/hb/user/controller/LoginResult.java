package com.hb.user.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.user.model.UserDao;

//@WebServlet("/user/result.hb");
public class LoginResult extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		
		int result=0;
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/testdb";
		String user="scott";
		String password="tiger";
		UserDao dao;
		try {
			dao = new UserDao(driver,url,user,password);
			result=dao.selectChk(id,pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//session
		HttpSession session = req.getSession();
		
		if(result>0){
			session.setAttribute("id", id);
			session.setAttribute("result", true);
			resp.sendRedirect("../index.html");
		}else{
			session.setAttribute("result", false);
			req.getRequestDispatcher("/err.jsp").forward(req, resp);
		}
	}
}
