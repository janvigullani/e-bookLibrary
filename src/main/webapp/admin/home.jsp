<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
.card-1 {
	background: radial-gradient(#1fe4f5, #3fbafe);
}

.card-2 {
	background: radial-gradient(#fbc1cc, #fa99b2);
}

.card-3 {
	/* background: radial-gradient(#76b2fe, #b69efe); */
	background: radial-gradient(#f588d8, #c0a3e5);
}

.card-4 {
	background: radial-gradient(#60efbc, #58d5c9);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>

	<div class="container ">
		<div class="row p-5">

			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card-1">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card-2 crd-ho">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4>All Books</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card-3 crd-ho">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-warning"></i><br>
							<h4>Orders</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
			
					<div class="card-4 crd-ho" data-toggle="modal" data-target="#exampleModalCenter">
						<div class="card-body text-center">
							<i class="fas fa-sign-out-alt fa-3x text-success"></i><br>
							<h4>Logout</h4>
						</div>
					</div>
				
			</div>

			<!-- Logout Modal -->

			<div class="modal fade " id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered " role="document">
					<div class="modal-content bg-light">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">WARNING!!</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<div class="modal-body text-center ">DO YOU WANT TO LOGOUT???</div>
						<hr>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<a href="../Logout" type="button" class="btn btn-primary">Logout</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Modal End -->
		</div>
	</div>
<div class="pt-3">
<%@include file="footer.jsp"%>
</div>
</body>
</html>