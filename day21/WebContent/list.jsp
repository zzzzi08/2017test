<%@page import="com.hb.model.Guest04DTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/frame.css" />
	<link rel="stylesheet" type="text/css" href="../css/table.css" />
	<style>
		
	</style>
	
	 <script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
     <script type="text/javascript">
     
     $(document).ready(function(){
    	
    	 $('#content button').click(function(){
    		window.location.replace("add.hb"); 
    	 });
    	 
     });
     
     </script>
</head>
<%
	List<Guest04DTO> list = (List<Guest04DTO>)request.getAttribute("alist");
	

%>

<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	
	
	<div id="content">
		<h1>목록</h1>
		<div id="table">
			<div class="row">
				<span class="col1">사번</span>
				<span class="col2">이름</span>
				<span class="col3">제목</span>
				<span class="col4">날짜</span>
				<span class="col5">금액</span>
			</div>
			<%for(Guest04DTO bean : list){ %>
			<a href="detail.hb?sabun=<%=bean.getSabun() %>">
			<div class="row">
				<span class="col1"><%=bean.getSabun() %></span>
				<span class="col2"><%=bean.getName() %></span>
				<span class="col3"><%=bean.getSub() %></span>
				<span class="col4"><%=bean.getNalja() %></span>
				<span class="col5"><%=bean.getPay() %></span>
			</div>
			</a>
			<%} %>
		</div>
		
		<button type="submit">입력</button>
	</div>	
	
	<%@ include file="template/footer.jspf" %>	
</body>
</html>