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
		<!-- �ΰ� -->
		<tr>
			<td colspan="6">
				<img alt="logo" src="imgs/logo.jpg">	
			</td>
		</tr>
		
		
			<!-- �޴� -->
		<tr>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td width="180" bgcolor="#aaaaff"><a href="index.jsp">home</a></td>
			<td width="180" bgcolor="#aaaaff"><a href="add.jsp">�Է�</a></td>
			<td width="180" bgcolor="#aaaaff"><a href="viewall.jsp">����</a></td>
			<td width="180" bgcolor="#aaaaff">����</td>
			<td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
		
		
		<!-- ���� -->
		<tr>
			<td colspan="6">
	<% 
		String sql="select num,name,kor+eng+math as tot from stu03 order by num";
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		Connection conn=null;				//�� ��ȸ connection, Statement, ResultSet
		Statement stmt=null;				//select = executeQuery(sql)
		ResultSet rs= null;
		
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
	%>
				
				<table align="center" border="1" cellspacing="0" width="500">
					<caption>�л�����Ʈ</caption>
					<tr>
						<td>�й�</td>
						<td>�̸�</td>
						<td>�հ�</td>
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
		out.println("<h1>��� ��Ʈ��ũ�� �Ҿ����� �����Դϴ�.</h1>");
		out.println("<h1>��� �� ������ ���ּ���</h1>");
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
		
		
		
		<!-- ������ -->
		<tr>
			<td colspan="6">
			(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ
			�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ
			����������ȣ����å���� : ����
			Copyright (c) 2015 �Ѻ��������� All rights reserved.
			</td>
		</tr>
	</table>

</body>
</html>