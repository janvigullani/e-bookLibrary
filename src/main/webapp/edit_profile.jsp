<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Edit Profile</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.hello:hover {
	background-color: #e6f2ff;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card hello">
					<div class="card-body">
						<h4 class="text-center text-primary">EDIT PROFILE</h4>

						<c:if test="${ not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${ not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="update_profile" method="post">
						<input type="hidden" name="id" value="${userobj.id }">
							<div class="form-group">
								<label for="exampleInputEmail1">Full Name*</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="${userobj.name }" >
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email*</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="${userobj.email }" >
							</div>

							<div class="form-group">
								<label for="exampleInput Password1">Phone Number*</label> <input
									name="phno" type="number" class="form-control"
									id="exampleInputPassword1" value="${userobj.phno }">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password"
									required="required">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-success">Update</button>
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