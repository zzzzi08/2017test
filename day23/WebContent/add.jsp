<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
    	var num=1;
    	$(document).ready(function(){
    		$('#fileadd>button').click(function(){
    			num++;
    			var btn='<br/><input type="file" name="file"'+num+'" id="file'+num+'" />';
    			$('#fileadd').append(btn);
    		});
    	});
</script>
	<style>

	</style>
</head>
<body>
	<h1>파일업로드</h1>
	<form action="upload.hb" method="post" enctype="multipart/form-data">
		<div>
			<label for="sub">제목</label>
			<input type="text" name="sub" id="sub" />
		</div>
		<div id="fileadd">
			<label for="file1">첨부파일</label>
			<button type="button">첨부추가</button><br/>
			<input type="file" name="file1" id="file1" />
		</div>
		<div>
			<button type="submit">전송</button>
			<button type="reset">취소</button>
		</div>
	</form>
</body>
</html>