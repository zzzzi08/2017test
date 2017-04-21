<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="main3.jsp" method="post">
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><input type="text" name="pay"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="입력">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>