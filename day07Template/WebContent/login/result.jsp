<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"   import="java.sql.*,com.hb.util.MyOracle"%>
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
<jsp:useBean id="login" class="com.hb.dto.LoginBean" scope="session"></jsp:useBean>
<%
	String rootPath=request.getContextPath();
	String id= request.getParameter("id");
	String pw= request.getParameter("pw");
	String ur= request.getParameter("template");
	String sql="select count(*) from guest03 where name=? and pay=?";
	int result=0;
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setInt(2, Integer.parseInt(pw));
		rs=pstmt.executeQuery();
		if(rs.next()){
			result=rs.getInt(1);
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	if(result>0){
		login.setName(id);
		login.setResult(1);
	}
	
	response.sendRedirect(rootPath+"/index.jsp?template="+ur);
%>

</body>
</html>