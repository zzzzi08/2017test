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
%>
<body>
	<jsp:useBean id="bean" class="com.hb.dto.Guest02Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
<%
	/* String name=request.getParameter("name");
	int pay=Integer.parseInt(request.getParameter("pay"));
	int re=Integer.parseInt(request.getParameter("re"));
	int depth=Integer.parseInt(request.getParameter("depth"));
	int ro=Integer.parseInt(request.getParameter("ro"));
	
	Guest02Bean bean = new Guest02Bean();
	bean.setName(name);
	bean.setPay(pay);
	bean.setLvl1(re);
	bean.setLvl2(depth);
	bean.setLvl3(ro); */
	
	String sql="insert into guest02 values(guest02_seq.nextval,?,";
	sql+="sysdate,?,?,?,?)";
	String sql2="update guest02 set lvl3=lvl3+1 where lvl1=? and lvl3>=?";
	
	conn=MyDB.getConnection();
	
	try{
		pstmt=conn.prepareStatement(sql2);
		pstmt.setInt(1, bean.getLvl1());
		pstmt.setInt(2, bean.getLvl3());
		pstmt.executeUpdate();
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, bean.getName());
		pstmt.setInt(2, bean.getPay());
		pstmt.setInt(3, bean.getLvl1());
		pstmt.setInt(4, bean.getLvl2()+1);
		pstmt.setInt(5, bean.getLvl3());
		pstmt.executeUpdate();
	}finally{
		pstmt.close();
		conn.close();
	}
	response.sendRedirect("list.jsp");
%>
</body>
</html>

