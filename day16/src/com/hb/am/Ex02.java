package com.hb.am;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println("method get: id="+id);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		System.out.println("method post : id="+id);
		
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<!Doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta http-equiv=\"Content-Type\" content=text/html; charset=UTF-8");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>¾ÆÀÌµð:"+id+"</h1>");
		out.println("<a href=\"ex03.html\">link</a>");
		out.println("<a href=\"guest/ex04.jsp\">link2</a>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
