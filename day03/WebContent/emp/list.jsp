<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String rootPath=request.getContextPath();
%>
	<table width="100%">
		<!-- header -->
		<tr>
			<td colspan="5">
			<a href="<%=rootPath %>/">
				<img alt="logo" src="../imgs/naver.jpg">
			</a>
			</td>
			<td colspan="2">
				<a href="#">login</a> / <a href="#">join</a>
			</td>
		</tr>
		<!-- header end-->
		
		
		<!-- menu -->
		<tr height="40">
			<td bgcolor="#A0F29A">&nbsp;</td>
			<td width="15%"bgcolor="#23A41A"><a href="<%=rootPath %>/intro/page1.jsp">회사소개</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
			<td width="15%" bgcolor="#23A41A"><a href="<%=rootPath %>/emp/list.jsp">사원관리</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
			<td width="15%" bgcolor="#23A41A"><a href="<%=rootPath %>/login/login.jsp">login</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
		</tr>
		<!-- menu end -->
		
		
		
		<!-- content -->
		<tr>
			<td colspan="7" height="300" align="center">
			<%
				String sql="select * from lec_emp order by sabun";
				String driver="oracle.jdbc.driver.OracleDriver";
				String url="jdbc:oracle:thin:@localhost:1521:xe";
				String user="scott";
				String password="tiger";
			%>
			<%
				ArrayList<String[]> list=new ArrayList<String[]>();
				Connection conn=null;
				Statement stmt=null;
				ResultSet rs = null;
				try{
					Class.forName(driver);
					conn=DriverManager.getConnection(url, user, password);
					stmt= conn.createStatement();
					rs=stmt.executeQuery(sql);
					while(rs.next()){
						String[] obj= new String[4];
						obj[0]=rs.getInt("sabun")+"";
						obj[1]=rs.getString("name");
						obj[2]=rs.getDate("nalja")+"";
						obj[3]=rs.getInt("pay")+"";
						list.add(obj);
					}
					
				}catch(Exception e){
					e.printStackTrace();
				}finally{
					try{
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					}catch(Exception e){
						
					}
				}
			%>
			
			<h1>직원 명부</h1>
			<table width="80%" border="1" cellspacing="0">
				<tr>
					<th>사번</th>
					<th>이름</th>
					<th>날짜</th>
					<th>금액</th>
					<th width="200">수정/삭제</th>
				</tr>
				<%for(int i=0; i<list.size(); i++){
					String[] record= list.get(i);
				%>
					<tr>
						<td><%=record[0] %></td>
						<td><%=record[1] %></td>
						<td><%=record[2] %></td>
						<td><%=record[3] %></td>
						<td>
							<form action="edit.jsp">
								<input type="hidden" name="sabun" value="<%=record[0] %>">
								<input type="radio" name="edit" value="0" checked="checked">금액수정
								<input type="radio" name="edit" value="1">삭제
								<input type="submit" value="이동">
							</form>
						</td>
					</tr>
				<%}%>
					<tr>
						<td colspan="5" align="right">
							<a href="add.jsp">신규등록</a>
						</td>
					</tr>
			</table>
			</td>
		</tr>
		<!-- content end -->
		
		
		<!-- footer -->
		<tr>
			<td colspan="7">
			<p>(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호</p>
			<p>한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호</p>
			<p>Copyright (c) 2015 한빛교육센터 All rights reserved.</p>
			</td>
		</tr>
		<!-- footer end -->
	</table>


</body>
</html>