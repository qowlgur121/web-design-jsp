<%@ page language="java" contentType="application/msword"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	response.setHeader("Content-Disposition", "attachment;filename=output.doc");	
	%>
	Today is: <%= new java.util.Date() %>
</body>
</html>