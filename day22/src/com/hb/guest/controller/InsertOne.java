package com.hb.guest.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.guest.model.GuestDao;

@WebServlet("/guest/insert.hb")
public class InsertOne extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String sub = req.getParameter("sub");
		String user=req.getParameter("user");
		String cntnt=req.getParameter("cntnt");
		int result=0;
		
		try {
			GuestDao dao = new GuestDao();
			result= dao.insertOne(sub,user,cntnt);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		if(result>0){
			resp.sendRedirect("./list.hb");
		}else{
			req.getRequestDispatcher("/err.jsp").forward(req, resp);
		}
		
	}
}
