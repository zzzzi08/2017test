<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	
	<form action="insert.jsp">
	<table>
		<tr>
			<td>����</td>
			<td><input type="text" name="sub" placeholder="�������"></td>	
		</tr>
		<tr>
			<td>�۾���</td>
			<td><input type="text" name="wid"></td>	
		</tr>
		<tr>
			<td>����</td>
			<td><textarea row="3" cols="15" name="content"></textarea></td>	
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="�۾���">
				<input type="reset" value="���">
			</td>	
		</tr>
	</table>
	</form>
			
			
<%@ include file="template/footer.jspf" %>

</body>
</html>