package com.hb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest01Dao;
import com.hb.model.Guest01Dto;


@WebServlet("/index.hb")
public class SelectAll extends HttpServlet {
// controller -> view��ü & model��ü ����
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//model ��� ����
		Guest01Dao dao = new Guest01Dao();
		ArrayList<Guest01Dto> list= dao.selectAll();
		
		//view ��� ����
		request.setAttribute("alist", list);
		RequestDispatcher rd = request.getRequestDispatcher("/list.jsp");
		rd.forward(request, response);
		
		
	}

}
