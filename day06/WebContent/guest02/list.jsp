<%@page import="com.hb.dto.Guest02Bean"%>
<%@page import="com.hb.util.MyDB"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hb.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	private String space(int cnt){
		String sp="";//
		for(int i=0; i<cnt; i++){
			sp+="&nbsp;&nbsp;&nbsp;";
			if(i==cnt-1){sp+="┗━";}
		}
		return sp;
	}
%>
<body>
<%
	ArrayList<Guest02Bean> list =new ArrayList<Guest02Bean>();
	String sql="select sabun, name, nalja, pay, lvl2 from guest02 ";
	sql+=" order by lvl1 desc, lvl3 desc";
	conn=MyDB.getConnection();
	try{
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			Guest02Bean bean= new Guest02Bean();
			bean.setSabun(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setNalja(rs.getDate(3));
			bean.setPay(rs.getInt(4));
			bean.setLvl2(rs.getInt(5));
			list.add(bean);
		}
	}finally{
		rs.close();
		stmt.close();
		conn.close();
	}
	String msg=request.getParameter("msg");
	if(msg==null)msg="";
	else if(Integer.parseInt(msg)>0)msg="<h2 style=\"color: red;\">성 공</h2>";
	else msg="<h2 style=\"color: red;\">실 패</h2>";
%>
	<%=msg %>
	<ul>
		<li>
			<a href="<%=request.getContextPath()%>/">HOME</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/guest02/list.jsp">guest02</a>
		</li>
		<li>
			<a href="#">guest03</a>
		</li>
	</ul>
	<h1>목록 페이지</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%for(Guest02Bean bean:list){ %>
		<tr>
			<td><a href="detail.jsp?sabun=<%=bean.getSabun() %>"><%=bean.getSabun() %></a></td>
			<td><%=space(bean.getLvl2())%><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
	</table>
		<p align="center"><a href="add.jsp">입력</a></p>
</body>
</html>






