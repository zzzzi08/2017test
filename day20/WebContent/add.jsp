<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style>

	</style>
</head>
<body>
	<h1>입력페이지</h1>
	<form action="insert.hb" method="post">
		<p>
			<label for="sabun">사번</label>
			<input type="text" name="sabun" id="sabun">
		</p>
		<p>
			<label for="name">이름</label>
			<input type="text" name="name" id="name">
		</p>
		<p>
			<label for="pay">금액</label>
			<input type="text" name="pay" id="pay">
		</p>
		<p>
			<input type="submit" value="입력">
			<input type="reset" value="취소">
		</p>
	</form>
</body>
</html>