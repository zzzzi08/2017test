<%@page import="com.hb.dao.Guest03Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.hb.dao.*, com.hb.dto.*, java.util.ArrayList, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/grid.css">
	<style>
		#table{
			width:80%;
			margin: 0px auto;
			border: 1px solid #000000;
		}
		#menu>div{
			background-color: red;
			height: 50px;
		}
		
		#menu>div>ul{
			width: 400px;
			
			padding: 0px;
			margin: 0px auto;
		}
		#menu>div>ul>li{
			text-align: center;
			height: 50px;
			width: 100px;
			float: left;
			list-style: none;
			color:white;
			 line-height: 50px;
			 position: relative;
		}
		#menu>div>ul>li:hover{
			background-color: blue;
		}
		#menu>div>ul>li>ul{
			display: none;
			padding: 0px;
		}
		#menu>div>ul>li>ul>li{
			height: 50px;
			list-style: none;
			width: 100px;
			line-height: 50px;
			border-top-style: dashed;
			border-top-width: 1px;
			border-top-color: white;
		}
		#menu>div>ul>li>ul>li>a:link,#menu>div>ul>li>ul>li>a:visited{
			color: white;
			text-decoration: none;
		}
		#menu>div>ul>li>ul>li>a:hover,#menu>div>ul>li>ul>li>a:active{
			color:yellow;
		}
		#menu>div>ul>li:hover>ul{
			display: inline-block;
			position: absolute;
			background: blue;
			top: 50px;
			left:0px;
		}
		
	</style>
</head>
<%!

%>
<body>
<%
	Guest03Dao dao = new Guest03Dao();
	ArrayList<JavaBean> list =dao.selectAll();
	
%>

	<div class="container">
		<div id="header" class="row">
			<div class="col-12 mcol-12">
				<h1>한빛교육센터</h1>
			</div>
		</div>
		<div id="menu" class="row">
			<div class="col-12">
				<ul>
					<li>menu1
						<ul>
							<li><a href="#">menu1-1</a></li>
							<li><a href="#">menu1-2</a></li>
							<li><a href="#">menu1-3</a></li>
						</ul>
					</li>
					<li>menu2
						<ul>
							<li><a href="#">menu2-1</a></li>
							<li><a href="#">menu2-2</a></li>
							<li><a href="#">menu2-3</a></li>
							<li><a href="#">menu2-4</a></li>
							<li><a href="#">menu2-5</a></li>
						</ul>
					</li>
					<li>menu3
						<ul>
							<li><a href="#">menu3-1</a></li>
							<li><a href="#">menu3-2</a></li>
							<li><a href="#">menu3-3</a></li>
						</ul>
					</li>
					<li>menu4
						<ul>
							<li><a href="#">menu4-1</a></li>
							<li><a href="#">menu4-2</a></li>
							<li><a href="#">menu4-3</a></li>
							<li><a href="#">menu4-4</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div id="content" class="row">
			<div class="col-8 mcol-12">
				<h1>리스트</h1>
				
				<table>
					<tr>
						<th>사번</th>
						<th>이름</th>
						<th>날짜</th>
						<th>금액</th>
					</tr>
					<%for(JavaBean bean:list){ %>
					<tr>
						<td><%=bean.getSabun() %></td>
						<td><%=bean.getName() %></td>
						<td><%=bean.getNalja() %></td>
						<td><%=bean.getPay() %></td>
					</tr>
					<%} %>
				</table>
			</div>
			<div class="col-4 mcol-0">
				<ul>
					<li>menu1-1</li>
					<li>menu1-2</li>
					<li>menu1-3</li>
					<li>menu1-4</li>
				</ul>
			</div>
		</div>
		<div id="footer" class="row">
			<div class="col-5 mcol-0">
				<p>logo</p>
			</div>
			<div class="col-7 mcol-12">
				<p>한빛 : 서울시 서울시 서울시</p>
				<p>Copyright (c) 한빛교육센터</p>
			</div>
		</div>
		
		
	</div>
	
</body>
</html>