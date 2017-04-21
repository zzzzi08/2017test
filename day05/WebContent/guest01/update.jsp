<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="../err.jsp" %>
<%@ page import="com.hb.dao.Guest01Dao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("EUC-KR");
	String param1=request.getParameter("sabun");
	String param2=request.getParameter("name");
	String param3=request.getParameter("pay");

	int sabun=Integer.parseInt(param1);
	String name=null;
	int pay=0;
	if(param2!=null){
		name=param2.trim();
	}
	if(param3!=null){
		pay=Integer.parseInt(param3.trim());
	}
	Guest01Dao dao = new Guest01Dao();
	int result = dao.updateOne(sabun,name,pay);
	out.println("<script type=\"text/javascript\">");
	if(result>0){
		//response.sendRedirect("list.jsp");
		out.println("alert('수정성공');location.replace('list.jsp');");
	}
	else{
		//response.sendRedirect("add.jsp");
		out.println("alert('수정실패');history.back();");
	}
	out.println("</script>");

%>
</body>
</html>