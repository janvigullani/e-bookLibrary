<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Address</title>
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
	<div class="container-fluid">
		<div class="card   hello  p-2">
			<div class="card-body ">
			<c:if test="${ not empty succMsg }">
							<div  class=" alert text-center alert-success">${succMsg }</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${ not empty failedMsg }">
							<div class=" alert text-center alert-danger">${failedMsg }</div>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
				<h3 class="text-center text-primary">Your Details for Order</h3>
				<form action="order" method="post">
				<input type="hidden" name="id" value="<%=u.getId() %>">
					<div class=" form-row">
						<div class="form-group col-md-6">
							<label for="inputPassword4">Name</label> <input type="text"
								class="form-control" id="inputPassword4" name="name"
								value="<%=u.getName()%>" readonly="readonly">
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input type="email" name="email"
								class="form-control" id="inputEmail4" value="<%=u.getEmail()%>"
								readonly="readonly">
						</div>

					</div>

					<div class="form-group">
						<label for="inputAddress2">Address </label> <input type="text"
							class="form-control" id="inputAddress2" name="address"
							placeholder="Apartment, studio, or floor" value="<%=u.getAddress()%>">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputAddress">Mobile</label> <input type="number"
								class="form-control" id="inputAddress" name="phno"
								placeholder="Phone Number" value="<%=u.getPhno()%>">
						</div>
						
						<div class="form-group col-md-6">
							<label for="inputAddress">Landmark</label> <input type="text"
								class="form-control" id="inputAddress" name="landmark" value="<%=u.getLandmark()%>">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">City</label> <input type="text" name="city"
								class="form-control" id="inputCity" value="<%=u.getCity()%>">
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">State</label> <input type="text"  id="inputState" name="state"
								class="form-control" value="<%=u.getState()%>">
						</div>
						<div class="form-group col-md-2">
							<label for="inputZip">PinCode</label> <input type="text" name="pincode"
								class="form-control" id="inputZip" value="<%=u.getPincode()%>">
						</div>
					</div>
					<div class="form-group">
						<label for="inputState2">Payment Mode</label> <select name="payment"
							id="inputState2" class="form-control">
							<option selected value="noselect">Choose...</option>
							<option value="COD">COD</option>
						</select>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">Place Order</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>