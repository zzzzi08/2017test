<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1>�Է� ������</h1>
	<form action="index.jsp" method="post">
		<input type="hidden" name="template" value="insert">
		<table width="50%">
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>�ݾ�</td>
			<td><input type="text" name="pay"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="�Է�">
				<input type="reset" value="���">
			</td>
		</tr>
		</table>
	</form>
</center>
</body>
</html>