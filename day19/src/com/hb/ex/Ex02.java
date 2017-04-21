package com.hb.ex;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex02 implements Servlet{
	ServletConfig servletConfig;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Ex02 servlet init()");
	}

	@Override
	public ServletConfig getServletConfig() {
		
		return servletConfig;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		System.out.println("Ex02 servlet service()");
	}

	@Override
	public String getServletInfo() {
		return "ver 3.0";
	}

	@Override
	public void destroy() {
		System.out.println("Ex02 servlet destory()");
	}

}
