<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
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
		String sql="select num,name,kor+eng+math as tot from stu03 order by num";
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		Connection conn=null;				//값 조회 connection, Statement, ResultSet
		Statement stmt=null;				//select = executeQuery(sql)
		ResultSet rs= null;
		
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
	%>
				
				<table align="center" border="1" cellspacing="0" width="500">
					<caption>학생리스트</caption>
					<tr>
						<td>학번</td>
						<td>이름</td>
						<td>합계</td>
					</tr>
					<% while(rs.next()){%>
					<tr>
						<td><%=rs.getInt("num") %></td>
						<td><%=rs.getString("name") %></td>
						<td><a href="viewone.jsp?num=<%=rs.getInt("num") %>"><%=rs.getInt("tot") %></a></td>
					</tr>
					<% } %>
				</table>
				
	<% }catch(Exception e){
		out.println("<h1>잠시 네트워크가 불안정한 상태입니다.</h1>");
		out.println("<h1>잠시 후 재접속 해주세요</h1>");
	} finally {
		try{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}catch(Exception e){
			
		}
		
	}
	
	%>
				
				
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