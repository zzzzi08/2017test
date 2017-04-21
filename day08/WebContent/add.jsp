<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/frame.css"/>
<style type="text/css">

	section>h1{
		font-size: 2em;
		width:80%;
		border-bottom: solid gray 1px;
		margin :50px auto;
	}
	section>form{
		width:80%;
		margin:0px auto;
		border:solid gray 1px;
		margin-bottom:50px;
	}
	form>p{
		border-bottom-color: red;
		border-bottom-style: dotted;
		border-bottom-width: 1px;
		height:80px;
	}
	form>p>label{
		width:150px;
		background-color: gray;
		display:inline-block;
		margin:0px 50px;
		text-align: center;
		color:white;
		font-weigth:bold	
	}
	form>p:last-child{
	
	}


</style>

</head>
<body>

	<header>
		<img alt="logo" src="imgs/naver.jpg">
	</header>
	
	<nav>
		<ul>
			<li><a href="list.jsp">LIST</a></li>
			<li><a href="#">menu2</a></li>
			<li><a href="#">menu3</a></li>
			<li><a href="#">menu4</a></li>
		</ul>
	</nav>
	
	<section>
		<h1>입력페이지</h1>
		<form action="insert.jsp" method="post">
		<p>
			<label for="name">이름</label> <input type="text" name="name">
		</p>
		<p>
			<label for="name">이름</label> <input type="range" min="1000" max="10000">
		</p>
		<p>
			<button type="submit">입력</button>
			<button type="reset">취소</button>
		</p>
		
		
		</form>
	
	
	</section>
	
	
	
	<footer>
		<address>서울시 서울시 서울시 서울시</address>
	</footer>
	
	
	
</body>
</html>