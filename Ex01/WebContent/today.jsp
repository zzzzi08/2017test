<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//import java.util.Date; <-디렉티브로 선언
	Date nalja= new Date();
	//java.util.Date nalja=new java.util.Date();
	int year =nalja.getYear()+1900;
	int month = nalja.getMonth()+1;//0~11
	int day = nalja.getDate();
	String nal= year+"년"+month+"월"+day+"일";
%>
<h1>오늘은 <%=nal %></h1>
</body>
</html>