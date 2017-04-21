<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>	

<%
	if("POST".equals(request.getMethod())){
		//db작업
		String sub=request.getParameter("sub");
		String wid=request.getParameter("wid");
		String content=request.getParameter("content");
		
		String sql="insert into lec_bbs (idx,sub,wid,content,nalja)";
		sql+=" values (lec_bbs_seq.nextval,?,?,?,?)";
		int result=insertOne(sql,sub,wid,content);
		if(result>0){
			response.sendRedirect("list.jsp");
		}else{
			response.sendRedirect("add.jsp");
		}
				
	}
	
%>
	<h1>글쓰기</h1>
	<form action="add.jsp" method="post">
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<td>제목</td>
			<td><input type="text" name="sub"></td>
		</tr>
		<tr>
				<td>글쓴이</td>
				<td><input type="text" name="wid"> </td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"></textarea> </td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="글쓰기">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
	
<%@ include file="../template/footer.jspf" %>
</body>
</html>