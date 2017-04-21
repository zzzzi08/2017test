package com.hb.guest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/guest/add.hb")
public class AddForm extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id="guest";
		if((Boolean)session.getAttribute("result")!=null){
			if((Boolean)session.getAttribute("result")){
				id=(String)session.getAttribute("id");
			}
		}
		req.setAttribute("user", id);
		req.getRequestDispatcher("add.jsp").forward(req, resp);
	}
}









