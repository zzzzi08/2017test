<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>답글페이지</h1>
	<form action="reInsert.jsp" method="post">
		<input type="hidden" name="lvl1" value="<%=request.getParameter("re")%>">
		<input type="hidden" name="lvl2" value="<%=request.getParameter("depth")%>">
		<input type="hidden" name="lvl3" value="<%=request.getParameter("ro")%>">
		<p>
		<label>이름</label><input type="text" name="name">
		</p>
		<p>
		<label>금액</label><input type="text" name="pay">
		</p>
		<p>
		<input type="submit" value="입력">
		<input type="reset" value="취소">
		</p>
	</form>
</body>
</html>