<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<h1>�űԵ��</h1>
			<form action="input.jsp">
				<label>�̸�</label>
				<input type="text" name="name">
				<input type="submit" value="���">
			</form>
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