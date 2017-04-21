package com.hb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest01Dao;
import com.hb.util.MyOracle;

@WebServlet("/insert.hb")
public class InsertOne extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String param1=request.getParameter("sabun").trim();
		String param2=request.getParameter("name").trim();
		String param3=request.getParameter("pay").trim();
		int sabun = Integer.parseInt(param1);
		String name = param2;
		int pay = Integer.parseInt(param3);
		
		//model
		Guest01Dao dao = new Guest01Dao();
		dao.insertOne(sabun,name,pay);
		
		//view
		response.sendRedirect("./index.hb");
		
		
	}

}
