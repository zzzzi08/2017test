<%@page import="com.hb.model.Guest01Dto"%>
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
	Guest01Dto bean = (Guest01Dto)request.getAttribute("dto");
%>
<body>
	<h1>상세페이지</h1>
	<p>
		<span>사번</span>
		<span><%=bean.getSabun() %></span>
	</p>
	<p>
		<span>이름</span>
		<span><%=bean.getName() %></span>
	</p>
	<p>
		<span>날짜</span>
		<span><%=bean.getNalja() %></span>
	</p>
	<p>
		<span>금액</span>
		<span><%=bean.getPay() %></span>
	</p>
	<p>
		<a href="edit.hb?sabun=<%=bean.getSabun() %>">수정</a>
		<a href="#">삭제</a>
	</p>
</body>
</html>