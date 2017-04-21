package com.hb.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest04DTO;
import com.hb.model.Guest04Dao;

@WebServlet("/guest/edit.bh")
public class EditForm extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int sabun=Integer.parseInt(req.getParameter("sabun"));
		Guest04Dao dao = new Guest04Dao();
		Guest04DTO bean=null;
		
			try {
				bean=dao.selectOne(sabun);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
		req.setAttribute("dto", bean);
		RequestDispatcher rd = req.getRequestDispatcher("/edit.jsp");
		rd.forward(req, resp);
	}
	
}
