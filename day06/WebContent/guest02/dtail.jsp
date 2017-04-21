<%@page import="com.hb.dto.Guest02Bean"%>
<%@page import="com.hb.util.MyDB"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hb.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<body>
<%
	int sabun=Integer.parseInt(request.getParameter("sabun"));
	String sql="select * from guest02 where sabun=?";
	Guest02Bean bean = new Guest02Bean();
	conn=MyDB.getConnection();
	try{
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, sabun);
		rs=pstmt.executeQuery();
		if(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			bean.setLvl1(rs.getInt("lvl1"));
			bean.setLvl2(rs.getInt("lvl2"));
			bean.setLvl3(rs.getInt("lvl3"));
			// after ~~~~~~~
		}
	}finally{
		rs.close();
		pstmt.close();
		conn.close();
	}
%>
	<h1>상세페이지</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<td>사번</td>
			<td><%=bean.getSabun() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=bean.getName() %></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><%=bean.getNalja() %></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><%=bean.getPay()%></td>
		</tr>
	</table>
	<p>
		<a href="#">수정</a>
		<a href="#">삭제</a>
		<a href="reply.jsp?re=<%=bean.getLvl1() %>&depth=<%=bean.getLvl2()%>&ro=<%=bean.getLvl3()%>">답글</a>	
	</p>
</body>
</html>




