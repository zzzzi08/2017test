package com.hb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/upload.hb")
public class UploadResult extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
//		String path="C:\\jsp\\day23\\WebContent\\uploads";
		String path = req.getRealPath("uploads");
		System.out.println(path);
//		MultipartRequest mr = new MultipartRequest(req, path);
		
		FileRenamePolicy policy=new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(req, path, 1024*1024*2);	
		
		String tmp=mr.getParameter("sub");
		String sub=new String(tmp.getBytes("8859_1"),"UTF-8");
		
		System.out.println("¡¶∏Ò¿∫ "+sub);
		
		/*
		 * //1024*1024*2=2MB
		 * 1=byte
		 * 1024=1kB
		 * 1024*1024=1MB
		*/
		ArrayList<String> names=new ArrayList<String>();
		ArrayList<String> orgins=new ArrayList<String>();
		
		
		Enumeration fnames = mr.getFileNames();
		while(fnames.hasMoreElements()){
			String file=(String) fnames.nextElement();
			String fname=mr.getFilesystemName(file);
			names.add(fname);
			String orgin=mr.getOriginalFileName(file);
			orgins.add(orgin);
//			System.out.println(fnames.nextElement());
//			System.out.println(fname+":"+orgin);
		}
		req.setAttribute("fname", names);
		req.setAttribute("orgin", orgins);
		req.getRequestDispatcher("download.jsp").forward(req, resp);
		
		
//		String fname=mr.getFilesystemName("file");
//		String orgin=mr.getOriginalFileName("file");
//		System.out.println(fname);
//		req.setAttribute("fname", fname);
//		req.setAttribute("orgin", orgin);
//		req.getRequestDispatcher("download.jsp").forward(req, resp);
		
	}
}
