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
	
	</style>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<div id="content">
		<h1><%=request.getAttribute("id") %>님 환영합니다</h1>
		<p>가입을 축하드립니다</p>
		<p>로그인 후 이용바랍니다</p>
	</div>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>