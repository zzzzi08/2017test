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
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");

	String sql="insert into stu03 values (stu03_seq.nextval,'"+name+"',"+kor+","+eng+","+math+")";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String password="tiger";	
	Connection conn = null;						//�� �Է� connection, statement
	Statement stmt = null;						//insert = execteUpdate(sql)
	int result = 0;
	
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user, password);
		stmt = conn.createStatement();
		result = stmt.executeUpdate(sql);					
	} catch(Exception ex) {
		ex.printStackTrace();
		out.println("<h1>(�����߻�)��� �Ŀ� �̿� �ٶ��ϴ�.</h1>");
	} finally{
		try{
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		}catch(Exception ex){
			
		}
	}
	if(result>0){
		out.println("<h1>�Է¼����Ͽ����ϴ�</h1>");
	}else{
		out.println("<h1>�Է½���</h1>");
	}
	
%>			
			<br><br><br><br><br><br><br>
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