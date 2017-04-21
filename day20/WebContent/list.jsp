<%@page import="com.hb.model.Guest01Dto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style>

	</style>
</head>
<%
	ArrayList<Guest01Dto> list=(ArrayList<Guest01Dto>)request.getAttribute("alist");
%>
<body>
	<h1>글 목록</h1>
	<table>
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%for(Guest01Dto bean : list) {%>
		<tr>
			<td><%=bean.getSabun() %></td>
			<td><a href="detail.hb?sabun=<%=bean.getSabun() %>"><%=bean.getName() %></a></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
	</table>
	
	<p><a href="add.hb">add</a></p>
</body>
</html>