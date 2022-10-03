<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recent Books</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>
<%@include file="all_components/navbar.jsp"%>
<div class="container-fluid">
		<div class="row p-2">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getAllRecentBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-4">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 200px; height: 250px;">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<%
						if (b.getBookCategory().equals("Old")) {
						%>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="row ">
							<a href="" class="btn btn-success btn-sm ml-5"> Details</a> <a
								href="" class="btn btn-primary btn-sm ml-1"> <i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%>
							</a>
						</div>
						<%
						}else{%>
							<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add to cart</a> <a href=""
								class="btn btn-success btn-sm ml-1"> Details</a> <a href=""
								class="btn btn-primary btn-sm ml-1"> <i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%>
							</a>
						</div>
						<% }
						%>
						

					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>