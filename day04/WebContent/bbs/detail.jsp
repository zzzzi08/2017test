<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<%
		String st_idx=request.getParameter("idx");
		int idx=Integer.parseInt(st_idx);
		String sql="select * from lec_bbs where idx=?";
		HashMap map=selectOne(sql,idx); 
	%>
	<h1><%=map.get("sub") %></h1>
	<table width="80%">
		<tr>
			<td width="100" bgcolor="#cccccc">글쓴이</td>
			<td><%=map.get("wid") %></td>
			<td width="100" bgcolor="#cccccc">조회수</td>
			<td><%=map.get("cnt") %></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#cccccc">게시일</td>
			<td><%=map.get("nalja") %></td>
			<td width="100" bgcolor="#cccccc">글번호</td>
			<td><%=map.get("idx") %></td>
		</tr>
		<tr>
			<td colspan="4" height="300"><pre><%=map.get("content") %></pre></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<a href="#">수정</a>
				<a href="#">삭제</a>
			</td>
		</tr>
	</table>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>