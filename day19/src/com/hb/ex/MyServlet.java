package com.hb.ex;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public abstract class MyServlet implements Servlet{
	ServletConfig servletConfig;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("servlet init()");
	}

	@Override
	public ServletConfig getServletConfig() {
		
		return servletConfig;
	}

	@Override
	public String getServletInfo() {
		return "ver 3.0";
	}

	@Override
	public void destroy() {
		System.out.println("servlet destory()");
	}

}
