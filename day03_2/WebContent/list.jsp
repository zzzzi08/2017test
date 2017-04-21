<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<%
	String sql="select idx,substr(sub,1,10) as subj,wid,cnt from lec_bbs order by idx desc";
	try{			//try-catch()�� ����ϸ� catch()�� ������ ��ƹ����Ƿ� finally�� �ٷ� ����� close()��
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, password);
	stmt= conn.createStatement();
	rs=stmt.executeQuery(sql);

	
%>

				<h1 align="center">�Խ��� ���</h1>
				<table width="90%" border="1" cellspacing="0" align="center">
					<tr>
						<th width="80">�۹�ȣ</th>
						<th>����</th>
						<th width="100">�۾���</th>
						<th width="80">��ȸ��</th>
					</tr>
		<% 
			while(rs.next()){
		%>	
					<tr>
						<td><%=rs.getInt("idx") %></td>
						<td><a href="detail.jsp?idx=<%=rs.getInt("idx") %>"><%=rs.getString("subj") %></a></td>
						<td><%=rs.getString("wid") %></td>
						<td><%=rs.getInt("cnt") %></td>
					</tr>
		<%} %>
				</table>
				<a href="add.jsp">�Է�</a>
<%}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
	%>		
<%@ include file="template/footer.jspf" %>
</body>
</html>