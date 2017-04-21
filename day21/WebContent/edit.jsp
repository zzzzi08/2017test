<%@page import="com.hb.model.Guest04DTO"%>
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
	<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		/*
		$('form input').eq(1).on('click focus',function(){
			$(this).val("");
		}); 
		*/
		$('form input').on('click focus',function(){
			$(this).select();
		});
		$('form').on('submit',function(){
			
			if($('form input').val().trim()==''){
				return false;
			}
						
			return true;
		});
		
	});
	</script>
</head>
<%
	Guest04DTO bean=(Guest04DTO)request.getAttribute("dto");
%>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<div id="content">
		<h1><%=bean.getSabun() %>님의 수정 페이지</h1>
		<form action="update.hb" method="post">
		<p>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" value="<%=bean.getName() %>" />
		</p>
		<p>
			<label for="sub">제목</label>
			<input type="text" name="sub" id="sub" value="<%=bean.getSub()%>"/>
		</p>
		<p>
			<label for="pay">금액</label>
			<input type="text" name="pay" id="pay" value="<%=bean.getPay() %>" />
		</p>
		<p>
			<button type="submit">수정</button>
			<button type="reset">취소</button>
		</p>
		
		</form>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>