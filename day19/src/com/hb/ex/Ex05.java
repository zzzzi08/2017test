package com.hb.ex;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05 extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response=(HttpServletResponse) res;
		String method=request.getMethod();
//		System.out.println(method);
		if("GET".equals(method)){
			doGet(request, response);
		}else if("POST".equals(method)){
			doPost(request, response);
		}
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {}
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {}
}


