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
		#content>div{
			width: 80%;
			border: 1px solid gray;
			margin: 50px auto;
		}
		#content>div>div{
			border-bottom:1px gray dotted;
		}
		.label{
			background-color: gray;
		}
	</style>
</head>
<jsp:useBean scope="request" id="dto" class="com.hb.guest.model.GuestDto"></jsp:useBean>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<div id="content">
	<div>
		<div>
			<span class="label">제목</span>
			<span class="val">
			<jsp:getProperty property="sub" name="dto"/>
			</span>
		</div>
		<div>
			<span class="label">글쓴이</span>
			<span class="val">
			<jsp:getProperty property="id" name="dto"/>
			</span>
			<span class="label">날짜</span>
			<span class="val">
			<jsp:getProperty property="nalja" name="dto"/>
			</span>
			<span class="label">조회수</span>
			<span class="val">
			<jsp:getProperty property="cnt" name="dto"/>
			</span>
		</div>
		<div>
			<jsp:getProperty property="cntnt" name="dto"/>
		</div>
		<div>
			<a href="#">수정</a>
			<a href="del.hb?idx=<%=dto.getIdx()%>">삭제</a>
		</div>
		</div>
	</div>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>











