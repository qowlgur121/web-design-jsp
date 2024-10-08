<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dto.BookRepository" scope="session" />

<html>
<head>
<title>도서 목록</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%
	ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>

	<%
	for (int i = 0; i < listOfBooks.size(); i++) {
		Book book = listOfBooks.get(i);
	%>
	
	<h5><%=book.getName()%></h5>
	<p><%=book.getAuthor()%>
	<br> <%=book.getPublisher()%> | <%=book.getPublisher() %>
	<p><%=book.getDescription().substring(0, 60) + "..."%>
	<p><%=book.getUnitPrice()%>원
	<p><a href="./book.jsp?id=<%=book.getBookId() %>" 상세 정보 &raquo;></a>
	<form action="./book.jsp" method="post">
		<input type="hidden" name = "id" value = "<%=book.getBookId()%>" />
		<input type="submit" value ="상세 정보 &raquo;" />
	</form>
	<%
	}
	%>
	<%@ include file="footer.jsp"%>
</body>
</html>
