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
		form{
			width: 80%;
			margin: 30px auto;
			border: 1px solid gray;
		}
		form>div{
			margin: 20px 0px;
			border-bottom-style: dashed;
			border-bottom-color: gray;
			border-bottom-width: 1px;
		}
	</style>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<div id="content">
		<h1>입력페이지</h1>
		<form action="insert.hb" method="post">
		<div>
			<label for="sub">제목</label>
			<input type="text" name="sub" id="sub"/>
		</div>
		<div>
			<label for="user">글쓴이</label>
			<span><%=request.getAttribute("user")%></span>
			<input type="hidden" value="<%=request.getAttribute("user")%>" name="user" id="user" />
		</div>
		<div>
			<textarea name="cntnt" rows="15" cols="40"></textarea>
		</div>
		<div>
			<button type="submit">글쓰기</button>
			<button type="reset">취소</button>
		</div>
		</form>
		
	</div>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>