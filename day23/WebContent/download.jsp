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
	//String fname=(String)request.getAttribute("fname");
	//String orgin=(String)request.getAttribute("orgin");
	
	ArrayList<String> fnames=(ArrayList<String>)request.getAttribute("fname");
	ArrayList<String> orgins=(ArrayList<String>)request.getAttribute("orgin");
	
%>
<body>
	<h1>다운로드</h1>
	<%
	for(int i=0; i<fnames.size(); i++){ 
		String fname=fnames.get(i);
		String orgin=orgins.get(i);
	%>
	<p>
		<a href="./uploads/<%=fname%>"><%=orgin %></a><br/>
	</p>
	<%} %>
</body>
</html>