<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="100%">
		<!-- header -->
		<tr>
			<td>
				<img alt="logo" src="../imgs/naver.jpg">
			</td>
		</tr>
		
		<!-- menu -->
		<tr>
			<td align="center" bgcolor="#22B600">
				<a href="/day07/" style="color:white; text-decoration: none;">HOME</a>
				<a href="/day07/guest03/main.jsp" style="color:white; text-decoration: none;">�Խ���</a>
				<a href="/day07/login/login.jsp" style="color:white; text-decoration: none;">�α���</a>
				<a href="#" style="color:white; text-decoration: none;">�޴�</a>
			</td>
		</tr>
		
		<!-- content -->
		<tr>
			<td height="300">
				<h1><%=request.getParameter("sabun") %>���� �� ������</h1>
				<%@ include file="detail.jsp" %>
				<a href="main5.jsp?sabun=<%=bean.getSabun() %>&name=<%=bean.getName() %>&pay=<%=bean.getPay() %>">����</a>
				<a href="#">����</a>
				<a href="#">���</a>
							
			</td>
		</tr>
		
		<!-- footer -->
		<tr>
			<td bgcolor="#cccccc">
				<p>Copyright (c) 2015 �Ѻ��������� All rights reserved.</p>
			</td>
		</tr>
	</table>
</body>
</html>