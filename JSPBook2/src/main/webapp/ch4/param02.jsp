<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션 태</h3>
	<jsp:include page="param02_data.jsp">
		<jsp:param name="title" value="<%=URLEncoder.encode("오늘의 날짜와 시각") %>" />
		<jsp:param name="date" value="<%=java.util.Calendar.getInstance().getTime %> %>" /> 
	</jsp:include>
</body>
</html>