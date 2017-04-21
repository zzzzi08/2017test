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
	<table>
		<!-- 로고 -->
		<tr>
			<td colspan="6">
				<img alt="logo" src="imgs/logo.jpg">	
			</td>
		</tr>
		
		
			<!-- 메뉴 -->
		<tr>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td width="180" bgcolor="#aaaaff"><a href="index.jsp">home</a></td>
			<td width="180" bgcolor="#aaaaff"><a href="add.jsp">입력</a></td>
			<td width="180" bgcolor="#aaaaff"><a href="viewall.jsp">보기</a></td>
			<td width="180" bgcolor="#aaaaff">방명록</td>
			<td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
		
		
		
		
		<!-- 내용 -->
		<tr>
			<td colspan="6">
<%
	String sql="select * from stu03 where num=";
	sql+=request.getParameter("num");
	String driver ="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	int num,kor,eng,math;
	num=0; kor=0; eng=0; math=0;
	String name=null;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		if(rs.next()){
			num=rs.getInt("num");
			name=rs.getString("name");
			kor=rs.getInt("kor");
			eng=rs.getInt("eng");
			math=rs.getInt("math");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
	}
%>
				<h1 align="center">상세정보</h1>
				<p align="center">
					학번:<%=num %>
				</p>
				<p align="center">
					이름:<%=name %>
				</p>
				<p align="center">
					국어:<%=kor %>
				</p>
				<p align="center">
					영어:<%=eng %>
				</p>
				<p align="center">
					수학:<%=math %>
				</p>
				<p align="center">
					합계:<%=kor+eng+math %>
				</p>
				<p align="center">
					평균:<%=(kor+eng+math)*100/3/100.0 %>
				</p>
				<p align="center">
					<a href="editform.jsp?num=<%=num %>">수정</a>
					<a href="del.jsp?num=<%=num %>">삭제</a>
				</p>
			</td>
		</tr>
		
		
		
		
		<!-- 꼬리말 -->
		<tr>
			<td colspan="6">
			(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호
			한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호
			개인정보보호관리책임자 : 허윤
			Copyright (c) 2015 한빛교육센터 All rights reserved.
			</td>
		</tr>
	</table>
			
</body>
</html>