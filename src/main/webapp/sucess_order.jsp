<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">

</style>
</head>
<body style="background-color: #f7f7f7">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container text-center  p-5">
		<i class="fas fa-check-circle fa-5x text-success"></i> 
		
		<h1>Thank You</h1>
		<h2>Your Order Successfully</h2>
		<h5>With in 7 Days Your Product will be Delivered In your Address</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a> <a
			href="order.jsp" class="btn btn-danger mt-3">View Order</a>
	</div>

	<div class="pt-3">
		<%@include file="all_components/footer.jsp"%>
	</div>

</body>
</html>