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
	<form action="index.jsp" method="post">
	<input type="hidden" name="template" value="update">
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<td>사번</td>
			<td><input type="text" name="sabun" value="<%=bean.getSabun() %>" readonly="readonly"> </td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value="<%=bean.getName()%>"></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><input type="text" name="nalja" value="<%=bean.getNalja() %>" disabled="disabled"></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><input type="text" name="pay" value="<%=bean.getPay()%>"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</form>
<body>

</body>
</html>