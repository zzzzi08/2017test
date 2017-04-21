<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>결과페이지</h1>
	<%
	/* String id = request.getParameter("id");
	String pw = request.getParameter("pw")
	String name = request.getParameter("name");
	out.println("<p>id:"+id+"</p>");
	out.println("<p>pw:"+pw+"</p>");
	out.println("<p>name:"+name+"</p>"); */
	Enumeration<String> enu=request.getParameterNames();
	while(enu.hasMoreElements()){
		String param=enu.nextElement();
		out.println("<p>");
		out.println(param);
		out.println(":");
		out.println(request.getParameter(param));
		out.println("</p>");
	}
	
	ServletRequest request2=pageContext.getRequest();
	ServletResponse response2 = pageContext.getResponse();
	JspWriter out2 = pageContext.getOut();
	
	//OutputStream os = response.getOutputStream();
	//os.write("<hr>".getBytes());
	out.println("<hr>");
	
	Map<String, String[]> map = request.getParameterMap();
	Set<String> key = map.keySet();
	Iterator<String> ite= key.iterator();
	while(ite.hasNext()){
		String param2= ite.next();
		out.println("<p>");
		out.println(param2);
		out.println(":");
		out.println(map.get(param2)[0]);
		out.println("</p>");
	}
	%>
</body>
</html>