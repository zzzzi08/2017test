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
<body>
<%
String msg=null;
String id=request.getParameter("id");
String pw=request.getParameter("pw");

if(id.equals("admin")&&pw.equals("1234")){
	msg="관리자님 로그인 중";
}else if(id.equals("guest")&&pw.equals("1111")){
	msg="손님 로그인 중";
}else{
	msg="로그인 실패";
}
%>
	<h1><%=msg %></h1>
</body>
</html>