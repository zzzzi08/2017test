<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String sabun=request.getParameter("sabun");
		String pay=request.getParameter("pay");
		String sql="update lec_emp set pay="+pay+" where sabun="+sabun;
		
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		

		Connection conn=null;
		Statement stmt=null;
		int result=0;
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			stmt= conn.createStatement();
			result= stmt.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();			
		}finally{
			try{
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){
							
			}
		}
		String addr="editform.jsp?sabun="+sabun;
		if(result>0){
			addr="list.jsp";			
		}
			response.sendRedirect(addr);
		
	%>

</body>
</html>