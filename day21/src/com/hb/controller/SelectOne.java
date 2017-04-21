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

@WebServlet("/guest/detail.hb")
public class SelectOne extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String param=req.getParameter("sabun");
		
		int sabun = Integer.parseInt(param);
		Guest04Dao dao = new Guest04Dao();
		Guest04DTO bean = new Guest04DTO();
				
		try {
			bean=dao.selectOne(sabun);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		req.setAttribute("dto", bean);
		RequestDispatcher rd = req.getRequestDispatcher("/detail.jsp");
		rd.forward(req, resp);

	}
}
