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
<title>Ebook: Cart</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fulid p-1">
		<div class="row ">
			<div class="col-sm-9">
				<h2 class="text-center mt-2 text-primary">Books You've Selected</h2>
				<table class="table  table-bordered table-striped mt-2 ml-4" >

					<thead class="table-dark">

						<tr>
							<th scope="col">Book Name</th>
							<th scope="col">Author</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody class="table-info table-hover">
						<%
						User u = (User) session.getAttribute("userobj");
						CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
						List<Cart> cart = dao.getBookByUser(u.getId());
						Double totalPrice = 0.00;
						int count = 0;
						for (Cart c : cart) {
							totalPrice = c.getTotalPrice();
							count++;
						%>
						<tr>
							<td><%=c.getBookName()%></td>
							<td><%=c.getAuthor()%></td>
							<td><%=c.getPrice()%></td>
							<td><a
								href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>"
								class="btn btn-sm btn-danger">Remove </a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
			<div class="col-sm-3">
				<div class="card h-500  " style="width:260px ; ">
					<div class="card-body ">
						<div>
							<p>
								<b>No. of Books:</b>
								<%=count%></p>
							<p>
								<b>SubTotal:</b>
								<%=totalPrice%></p>
						</div>
						<hr>
						<div class="text-center">
						<a href="all_new_book.jsp" class="btn btn-warning text-white m-1">Continue Shopping </a> 
						<a class="btn btn-success m-1" href="">Clear Cart</a><br>
						<a href="checkout.jsp" class="btn btn-info text-white  m-1">Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>