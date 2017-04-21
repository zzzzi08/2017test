<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<%
	String st_idx=request.getParameter("idx");
	int idx=Integer.parseInt(st_idx);
	String sql="update lec_bbs set cnt=cnt+1 where idx=?";

	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,idx);
		pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	sql="select * from lec_bbs where idx=?";
	try{
		conn=DriverManager.getConnection(url, user, password);
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,idx);
		rs=pstmt.executeQuery();
		if(rs.next()){
%>
<h1>상세페이지</h1>
<table border="1" width="80%">
	<tr>
		<td>제목</td>
		<td><%=rs.getString("sub") %></td>
	</tr>
	<tr>
		<td>글쓴이</td>
		<td><%=rs.getString("wid") %></td>
	</tr>
	<tr>
		<td>게시일</td>
		<td><%=rs.getString("nalja") %></td>
	</tr>
	<tr>
		<td>조회수</td>
		<td><%=rs.getInt("cnt") %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=rs.getString("content") %></td>
	</tr>
</table>

<%
		}
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
%>

<%@ include file="template/footer.jspf" %>
</body>
</html>