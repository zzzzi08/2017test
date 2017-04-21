package com.hb.guest.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.guest.model.GuestDao;
import com.hb.guest.model.GuestDto;

@WebServlet("/guest/detail.hb")
public class SelectOne extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int idx=Integer.parseInt(req.getParameter("idx"));
		try {
			GuestDao dao = new GuestDao();
//			GuestDto bean=dao.selectOne(idx);
//			dao = new GuestDao();
//			bean.setCnt(bean.getCnt()+1);
//			dao.updateCnt(idx,bean.getCnt());
			GuestDto bean=dao.detailOne(idx);
			req.setAttribute("dto", bean);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("detail.jsp").forward(req, resp);
		
	}
}











