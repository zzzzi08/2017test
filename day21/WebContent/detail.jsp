<%@page import="com.hb.model.Guest04DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/frame.css" />
	<style>
		span{
			display: inline-block;
		}
		.col1{
			width: 100px;
			background-color: gray;
		}
		.col1+span{
			
		}
		

	</style>
	<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
</head>
<%
	//Guest04DTO dto=(Guest04DTO)request.getAttribute("dto");
%>

<jsp:useBean id="dto" class="com.hb.model.Guest04DTO" scope="request"></jsp:useBean>

<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<div id="content">
		<h1>상세페이지</h1>
		<div>
			<div>
			<span class="col1">제목</span>
			<span><jsp:getProperty property="sub" name="dto" /></span>
			</div>
			<div>
			<span class="col1">사번</span>
			<span><jsp:getProperty property="sabun" name="dto" /></span>
			<span class="col1">이름</span>
			<span><jsp:getProperty property="name" name="dto" /></span>
			</div>
			<div>
			<span class="col1">날짜</span>
			<span><jsp:getProperty property="nalja" name="dto" /></span>
			<span class="col1">금액</span>
			<span><jsp:getProperty property="pay" name="dto" /></span>
			</div>
			<div>
				<button>수정</button>
				<button>삭제</button>
			</div>
		</div>
	</div>
	
	<%@ include file="template/footer.jspf" %>
	<script type="text/javascript">
	$('button').click(function() {
		if($(this).text()=='수정'){
			window.location.href='edit.hb?sabun=<%=dto.getSabun()%>';
		}
	});
	</script>
</body>
</html>