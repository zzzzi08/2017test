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
			<td width="15%"bgcolor="#23A41A"><a href="<%=rootPath %>/intro/page1.jsp">ȸ��Ұ�</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
			<td width="15%" bgcolor="#23A41A"><a href="<%=rootPath %>/emp/list.jsp">�������</a></td>
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
			
			<h1>���� ���</h1>
			<table width="80%" border="1" cellspacing="0">
				<tr>
					<th>���</th>
					<th>�̸�</th>
					<th>��¥</th>
					<th>�ݾ�</th>
					<th width="200">����/����</th>
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
								<input type="radio" name="edit" value="0" checked="checked">�ݾ׼���
								<input type="radio" name="edit" value="1">����
								<input type="submit" value="�̵�">
							</form>
						</td>
					</tr>
				<%}%>
					<tr>
						<td colspan="5" align="right">
							<a href="add.jsp">�űԵ��</a>
						</td>
					</tr>
			</table>
			</td>
		</tr>
		<!-- content end -->
		
		
		<!-- footer -->
		<tr>
			<td colspan="7">
			<p>(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ</p>
			<p>�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ</p>
			<p>Copyright (c) 2015 �Ѻ��������� All rights reserved.</p>
			</td>
		</tr>
		<!-- footer end -->
	</table>


</body>
</html>