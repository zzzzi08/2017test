<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.hb.dao.Guest01Dao" %>
<%@ page errorPage="err.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");	//���ڿ� ���ڵ� post �ѱ�ó��
		String name = request.getParameter("name");
		String st_pay = request.getParameter("pay");
		
		if(name!=null){
			name=name.trim();
		}
		
		if(st_pay!=null){
			st_pay=st_pay.trim();
		}
		/*
		for(int i=0; i<st_pay.length(); i++){
			char ch=st_pay.charAt(i);
			// (int)'0'<=(int)ch<=(int)'9'
			if((int)'0'<=(int)ch && (int)ch<=(int)'9'){
				
			}else{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('�ݾ��� ���ڷθ� �Է����ּ���');history.back();");
				out.println("</script>");
				return;
			}
		}
		*/		
		
		/*
		int pay=0;
		try{
			pay = Integer.parseInt(st_pay);
		}catch(Exception e){
			out.println("<script type=\"text/javascript\">");
			out.println("alert('�ݾ��� �Է��� �߸��Ǿ����ϴ�.');history.back();");
			out.println("</script>");
			return;
		}
		*/
		
		int pay = Integer.parseInt(st_pay);
		
		Guest01Dao dao = new Guest01Dao();
		int result = dao.insertOne(name,pay);
		out.println("<script type=\"text/javascript\">");
		if(result>0){
			//response.sendRedirect("list.jsp");
			out.println("alert('�Է¼���');location.replace('list.jsp');");
		}
		else{
			//response.sendRedirect("add.jsp");
			out.println("alert('�Է½���');history.back();");
		}
		out.println("</script>");
	%>
</body>
</html>