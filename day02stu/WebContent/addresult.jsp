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
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");

	String sql="insert into stu03 values (stu03_seq.nextval,'"+name+"',"+kor+","+eng+","+math+")";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String password="tiger";	
	Connection conn = null;						//값 입력 connection, statement
	Statement stmt = null;						//insert = execteUpdate(sql)
	int result = 0;
	
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user, password);
		stmt = conn.createStatement();
		result = stmt.executeUpdate(sql);					
	} catch(Exception ex) {
		ex.printStackTrace();
		out.println("<h1>(에러발생)잠시 후에 이용 바랍니다.</h1>");
	} finally{
		try{
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		}catch(Exception ex){
			
		}
	}
	if(result>0){
		out.println("<h1>입력성공하였습니다</h1>");
	}else{
		out.println("<h1>입력실패</h1>");
	}
	
%>			
			<br><br><br><br><br><br><br>
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