package com.hb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest04Dao;

@WebServlet("/guest/update.hb")
public class UpdateOne extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		Enumeration<String> params = req.getParameterNames();
		
		while(params.hasMoreElements()){
			String param=params.nextElement();
			if(req.getParameter(param).equals("")){
				PrintWriter out = resp.getWriter();
				out.print(goback());
				out.close();
				
				return ;
			}
			
		}
		
		int sabun = Integer.parseInt(req.getParameter("sabun"));
		String name=req.getParameter("name");
		String sub=req.getParameter("sub");
		int pay=Integer.parseInt(req.getParameter("pay"));
		
		
		Guest04Dao dao = new Guest04Dao();
		int result = 0;
		try {
			result = dao.updateOne(sabun,name,sub,pay);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result>0){
			resp.sendRedirect("detail.hb?sabun="+sabun);
		}else{
			PrintWriter out = resp.getWriter();
			out.print(goback());
			out.close();
		}
	}
	
	private String goback(){
		String msg="<script type=\"text/javascript\">";
		msg+="window.history.back();";
		msg+="</script>";
		
		return msg;
	}
	
}
