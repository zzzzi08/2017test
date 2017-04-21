package com.hb.pm;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyJson extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String path="C:\\jsp\\day17\\WebContent\\imgs";
		File file = new File("path");
		String[] flist = file.list();
		
		resp.setContentType("text/plain");
		resp.setCharacterEncoding("UTF-8");
		
		PrintStream outstrm = System.out;
		PrintWriter out = new PrintWriter(outstrm);
		out.print("{\"data\":[");
		for(int i=0; i<flist.length; i++){
			File tmp = new File(path+"\\"+flist[i]);
			if(i!=0)out.print(",");
			out.print("{\"src\":\""+flist[i]+"\",\"size\":"+tmp.length()+"}");
			
		}

		out.print("]}");
		out.close();
	}
}
