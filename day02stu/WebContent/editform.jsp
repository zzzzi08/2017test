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
				<h1 align="center">����������</h1>
				<form action="editresult.jsp">
				<p align="center">
					<label>�й�</label>
					<input type="text" name="num" readonly="readonly" value="<%=num%>">
				</p>
				<p align="center">
					<label>�̸�</label>
					<input type="text" name="name" value="<%=name%>">
				</p>
				<p align="center">
					<label>����</label>
					<input type="text" name="kor" value="<%=kor%>">
				</p>
				<p align="center">
					<label>����</label>
					<input type="text" name="eng" value="<%=eng%>">
				</p>
				<p align="center">
					<label>����</label>
					<input type="text" name="math" value="<%=math%>">
				</p>
				<p align="center">
					<input type="submit" value="����">
					<input type="reset" value="���">
				</p>
				</form>
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