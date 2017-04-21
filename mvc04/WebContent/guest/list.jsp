<%@page import="com.hb.guest.model.GuestDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
	<style>
		#content>table{
			margin: 40px auto;
			width: 80%;
			border: 1px solid gray;
		}
	</style>
</head>
<%
	List<GuestDto> list=(List<GuestDto>)request.getAttribute("alist");
%>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<div id="content">
		<h1>목록</h1>
		<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>조회수</th>
		</tr>
		<%for(GuestDto bean:list){ %>
		<tr>
			<td><%=bean.getIdx() %></td>
			<td><a href="detail.hb?idx=<%=bean.getIdx() %>"><%=bean.getSub() %></a></td>
			<td><%=bean.getId() %></td>
			<td><%=bean.getCnt() %></td>
		</tr>		
		<%} %>
		</table>
		<p>
			<a href="add.hb">입력</a>
		</p>
	</div>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>