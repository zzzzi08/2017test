<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>	
	<h1>수정 페이지</h1>
<form action="update.jsp" method="post">
<table width="60%" border="1" cellspacing="0">
	<tr>
		<td width="30%">사번</td>
		<td><input type="text" name="sabun" value="<%=request.getParameter("param1")%>"></td>
	</tr>
	<tr>
		<td width="30%">이름</td>
		<td><input type="text" name="name" value="<%=request.getParameter("param2")%>"></td>
	</tr>
	<tr>
		<td width="30%">날짜</td>
		<td><input type="text" name="nalja" value="<%=request.getParameter("param3")%>" disabled="disabled"></td>
	</tr>
	<tr>
		<td width="30%">금액</td>
		<td><input type="text" name="pay" value="<%=request.getParameter("param4")%>"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="수정">
			<input type="reset" value="취소">
		</td>
		
	</tr>
</table>
</form>

<%@ include file="../template/footer.jspf" %>
</body>
</html>