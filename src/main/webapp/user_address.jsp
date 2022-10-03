<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-book: Address</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.hello {
	width: 50%;
	margin: auto;
}

.hello:hover {
	background-color: #e6f2ff;
}
</style>
</head>
<body style="background-color: #f7faf8;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid p-4">
		<div class="card   hello  p-4">
			<div class="card-body ">
				<h3 class="text-center text-info">ADD/ CHANGE ADDRESS</h3>

				<c:if test="${ not empty succMsg }">
					<p class="text-center text-success">${succMsg }</p>
					<c:remove var="succMsg" scope="session" />
				</c:if>
				<c:if test="${ not empty failedMsg }">
					<p class="text-center text-danger">${failedMsg }</p>
					<c:remove var="failedMsg" scope="session" />
				</c:if>

				<form action="add_address" method="post">
					<div class="form-row">
						<input type="hidden" name="id" value="<%=u.getId()%>">
						<div class="form-group col-md-6">
							<label for="inputAddress2">Address </label> <input type="text"
								name="address" class="form-control" id="inputAddress2"
								placeholder="Apartment, studio, or floor" required="required" value="<%=u.getAddress()%>">
						</div>
						<div class="form-group col-md-6">
							<label for="inputAddress">Landmark</label> <input type="text"
								name="landmark" class="form-control" id="inputAddress" required="required" value="<%=u.getLandmark()%>">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">City</label> <input type="text"
								name="city" class="form-control" id="inputCity" required="required" value="<%=u.getCity()%>">
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">State</label> <input id="inputState"
								name="state" class="form-control" required="required" value="<%=u.getState()%>">
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Zip</label> <input type="text" name="zip"
								class="form-control" id="inputZip" required="required" value="<%=u.getPincode()%>">
						</div>
					</div>
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-warning">Update</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>