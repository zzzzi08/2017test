<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, com.hb.util.MyOracle"%>
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
	<jsp:useBean id="bean" class="com.hb.dto.Guest03Bean" scope="request"></jsp:useBean>
	<jsp:setProperty property="sabun" name="bean"/>
<%
	String sql="select * from guest03 where sabun=?";
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bean.getSabun());
		rs=pstmt.executeQuery();
		if(rs.next()){
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
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
			<td><%=bean.getPay() %></td>
		</tr>
	</table>
	<a href="index.jsp?template=edit&sabun=<%=bean.getSabun() %>"></a>
<body>

</body>
</html>