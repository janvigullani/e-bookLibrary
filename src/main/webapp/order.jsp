<%@page import="com.DAO.BookOrderDAOImpl"%>
<%@page import="com.entity.Book_Order"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Order List</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<h2 class="text-center mt-2 text-primary">Books You've Ordered</h2>
		<table class="table  table-bordered table-striped mt-2">
			<thead class="table-dark table-hover">
				<tr>
					<th scope="col">Order ID</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody class="table-danger ">
				<%
				User u = (User) session.getAttribute("userobj");
				BookOrderDAOImpl dao = new BookOrderDAOImpl(DBConnect.getConn());
				List<Book_Order> blist = dao.getBook(u.getEmail());
				for (Book_Order c : blist) {
				%>
				<tr>
					<td><%=c.getOrderId()%></td>
					<td><%=c.getBookName()%></td>
					<td><%=c.getAuthor()%></td>
					<td><%=c.getPrice()%></td>
					<td><%=c.getPaymentType()%></td>
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