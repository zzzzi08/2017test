package com.hb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest01Dao;
import com.hb.model.Guest01Dto;

@WebServlet("/edit.hb")
public class EditOne extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sabun = Integer.parseInt(request.getParameter("sabun"));
		//model
		Guest01Dao dao = new Guest01Dao();
		Guest01Dto bean = dao.selectOne(sabun);
		request.setAttribute("bean", bean);
		//view
		RequestDispatcher rd = request.getRequestDispatcher("/edit.jsp");
		rd.forward(request, response);
	}

}
