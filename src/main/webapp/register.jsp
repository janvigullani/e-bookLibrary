<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Register</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.hello:hover {
	background-color: #e6f2ff;
}
</style>
</head>
<body style="background-color: #f7f7f7">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container">
		<div class="row p-4">
			<div class="col-md-6 offset-md-3">
				<div class="card hello">
					<div class="card-body">
						<h4 class="text-center text-primary">REGISTRATION FORM</h4>

						<c:if test="${ not empty success }">
							<p class="text-center text-success">${success }</p>
							<c:remove var="success" scope="session" />
						</c:if>

						<c:if test="${ not empty fail }">
							<p class="text-center text-danger">${fail }</p>
							<c:remove var=" fail" scope="session" />
						</c:if>

						<c:if test="${ not empty fail2 }">
							<p class="text-center text-danger">${fail2 }</p>
							<c:remove var=" fail2" />
						</c:if>

						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Name*</label> <input type="text"
									class="form-control" id="exampleInputEmail1" name="name"
									aria-describedby="emailHelp" placeholder="Enter name"
									required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address*</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									name="email" aria-describedby="emailHelp"
									placeholder="Enter email" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Phone*</label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									name="phno" placeholder="Phone Number" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password*</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password" placeholder=" Password" required="required">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" name="check"> <label
									class="form-check-label" for="exampleCheck1">Agree to
									Terms and Conditions</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-success">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>