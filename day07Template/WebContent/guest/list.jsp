<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.hb.util.*, java.util.ArrayList,com.hb.dto.*"%>
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
	ArrayList<Guest03Bean> list = new ArrayList<Guest03Bean>();
	String sql="select * from guest03";
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Guest03Bean bean = new Guest03Bean();
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
	<table width="80%" align="center">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
			<%for(Guest03Bean bean:list){ %>
		<tr>
			<td><%=bean.getSabun() %></td>
			<td><a href="index.jsp?template=detail&saun=<%=bean.getSabun() %>"><%=bean.getName() %></a></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		
		<%} %>
	</table>
	<a href="index.jsp?template=add">입력</a>
</body>
</html>