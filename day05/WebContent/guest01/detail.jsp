<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.hb.dao.Guest01Dao" %>
<%@ page import="com.hb.dto.Guest01Bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>	
<%
	String param = request.getParameter("idx");
	int sabun=Integer.parseInt(param);
	Guest01Dao dao = new Guest01Dao();
	Guest01Bean bean=dao.selectOne(sabun); 
	
%>
	
	<center>
	<h1>상세 페이지</h1>
	<table width="60%" border="1" cellspacing="0">
		<tr>
			<td width="30%">사번</td>
			<td><%=bean.getSabun() %></td>
		</tr>
		<tr>
			<td width="30%">이름</td>
			<td><%=bean.getName() %></td>
		</tr>
		<tr>
			<td width="30%">날짜</td>
			<td><%=bean.getNalja() %></td>
		</tr>
		<tr>
			<td width="30%">금액</td>
			<td><%=bean.getPay() %></td>
		</tr>
		<tr>
			<td colspan= "2">
				<a href="edit.jsp?param1=<%=bean.getSabun() %>&param2=<%=bean.getName() %>&param3=<%=bean.getNalja() %>&param4=<%=bean.getPay() %>">[수 정]</a>
				<a href="#">[삭 제]</a>
				<a href="#" onclick="history.back()">[뒤 로]</a>
			</td>
		</tr>
	
	</table>
	</center>
	
<%@ include file="../template/footer.jspf" %>
</body>
</html>