<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="com.hb.dto.Guest01Bean" %>
<%@ page import="com.hb.dao.Guest01Dao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<center>
	<h1>목록</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr bgcolor="#cccccc">
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		String keyword=request.getParameter("keyword");
		String search =request.getParameter("search");
		if(keyword==null){
			keyword="name";			
		}else if(keyword.equals("key1")){
			keyword="name";
		}else if(keyword.equals("key2")){
			keyword="sabun";
		}else{
			keyword="name";						
		}
		
		Guest01Dao dao= new Guest01Dao();
		ArrayList<Guest01Bean> list=null;
		if(search==null){
			list=dao.selectAll();
		}else{
			list=dao.selectAll(keyword,search); 
		}
		if(list!=null){
			for(int i=0; i<list.size(); i++){
				Guest01Bean bean=list.get(i);
		%>
		<tr>
			<td><a href="detail.jsp?idx=<%=bean.getSabun()%>"><%=bean.getSabun()%></a></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%
			}
		}
		%>
	</table>
	<p>
	<form action="list.jsp">
		<select name="keyword">
			<option value="key1" selected="selected">이름</option>
			<option value="key2">사번</option>
		</select>
		<input type="text" name="search">
		<input type="submit" value="검색">
	</form>
		<a href="add.jsp">입력</a>
	</p>
	</center>	
	<%@ include file="../template/footer.jspf" %>
</body>
</html>