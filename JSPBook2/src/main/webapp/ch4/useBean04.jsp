<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	
	<p> 아이디 : <%=person.getId() %>
	<p> 아이디 : <%=person.getName() %>
	
	<%
		person.setId(202219391);
		person.setName("배지혁");
	
	%>	
	<jsp:include page="useBean03.jsp" />
	
</body>
</html>