<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: OldBook</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<h2 class="text-center mt-2 text-primary">Old Books By You</h2>
		<c:if test="${ not empty success }">
			<p class="text-center text-success">${success }</p>
			<c:remove var="success" scope="session" />
		</c:if>

		<c:if test="${ not empty fail }">
			<p class="text-center text-danger">${fail }</p>
			<c:remove var=" fail" scope="session" />
		</c:if>
		<table class="table  table-bordered table-striped mt-2">
			<thead class="table-dark table-hover">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody class="table-success ">
				<%
				User u = (User) session.getAttribute("userobj");
				String email = u.getEmail();
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls c : list) {
				%>
				<tr>
					<td><%=c.getBookName()%></td>
					<td><%=c.getAuthor()%></td>
					<td><%=c.getPrice()%></td>
					<td><a href="delete_old_book?em=<%=email%>&&id=<%=c.getBookId() %>"
						class="btn btn-sm btn-danger">Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>