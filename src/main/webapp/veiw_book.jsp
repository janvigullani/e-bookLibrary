<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Details</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_components/navbar.jsp"%>
	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookID(bid);
	%>
	<div class="container">
		<div class="row p-4 text-center ">

			<div class="col-md-6 crd-ho border p-2 bg-white ">
				<img src="book/<%=b.getPhotoName() %>"
					style="height: 200px; width: 150px">
				<h4 class="mt-3">
					Book Name: <span class="text-info"><%=b.getBookName() %></span>
				</h4>
				<h4>
					BY: <span class="text-info"><%=b.getAuthor() %></span>
				</h4>
				<h4>
					Category: <span class="text-info"><%=b.getBookCategory() %></span>
				</h4>
			</div>

			<div class="col-md-6 border p-4 bg-white crd-ho">
				<h2><%=b.getBookName() %></h2>
				<br>
				<% 
				if  ("Old".equals(b.getBookCategory())) {
					 %>
				<h5 class="text-primary">Contact To Seller</h5>
				<h5 class="text-primary">
					<i class="far fa-envelope"></i> EMail:<%=b.getEmail()%>
				</h5>
				<% } %>

				<div class="row text-warning ">
					<div class="col-md-4  text-center p-2">
						<i class="fas fa-money-bill-wave fa-2x"></i>
						<p>Cash On Delivery</p>
					</div>

					<div class="col-md-4  text-center p-2">
						<i class="fas fa-undo-alt fa-2x"></i>
						<p>Return Available</p>
					</div>

					<div class="col-md-4  text-center p-2">
						<i class="fas fa-truck-moving fa-2x"></i>
						<p>Free Shipping</p>
					</div>
				</div>


				<% 
				if  ("Old".equals(b.getBookCategory())) {
					 %>
				<div class=" text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i class="fas fa-cart-plus"></i>
						Continue Shopping </a> <a href="" class="btn btn-danger"><i
						class="fas fa-indian-rupee-sign 	"></i> <%=b.getPrice() %> </a>
				</div>
				<%
				}else{%>
				<div class=" text-center p-3">
					<a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i>
						Add Cart </a> <a href="" class="btn btn-danger"><i
						class="fas fa-indian-rupee-sign 	"></i> <%=b.getPrice() %> </a>
				</div>
				
				<%
				}%>
			</div>
		</div>

	</div>
	<div class="">
		<%@include file="all_components/footer.jsp"%>
	</div>

</body>
</html>