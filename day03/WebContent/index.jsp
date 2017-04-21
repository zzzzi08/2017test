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
			<td colspan="5">
			<a href="<%=request.getContextPath() %>">
				<img alt="logo" src="imgs/naver.jpg">
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
			<td width="15%"bgcolor="#23A41A"><a href="intro/page1.jsp">회사소개</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
			<td width="15%" bgcolor="#23A41A"><a href="emp/list.jsp">사원관리</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
			<td width="15%" bgcolor="#23A41A"><a href="login/login.jsp">login</a></td>
			<td bgcolor="#A0F29A">&nbsp;</td>
		</tr>
		<!-- menu end -->
		
		
		
		<!-- content -->
		<tr>
			<td colspan="7" height="300" align="center">
			<h1>환영합니다</h1>
			</td>
		</tr>
		<!-- content end -->
		
		
		<!-- footer -->
		<tr>
			<td colspan="7">
			<p>(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호</p>
			<p>한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호</p>
			<p>Copyright (c) 2015 한빛교육센터 All rights reserved.</p>
			</td>
		</tr>
		<!-- footer end -->
	</table>
</body>
</html>