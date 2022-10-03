<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	justify-content: center;
	align-items: center;
}

a:hover {
	text-decoration: none;
}

.card {
	margin: 10px;
	padding: 10px;
	width: 100%;;
	min-height: 200px;
	display: grid;
	grid-template-rows: 20px 50px 1fr 50px;
	border-radius: 10px;
	box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.25);
	transition: all 0.2s;
}

.card:hover {
	box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.4);
	transform: scale(1.01);
}

.card-1 {
	background: radial-gradient(#1fe4f5, #3fbafe);
}

.card-2 {
	background: radial-gradient(#fbc1cc, #fa99b2);
}

.card-3 {
	background: radial-gradient(#76b2fe, #b69efe);
}

.card-4 {
	background: radial-gradient(#60efbc, #58d5c9);
}

.card-5 {
	background: radial-gradient(#f588d8, #c0a3e5);
}

.card-6 {
	background: radial-gradient(#ffff99, #80ff80);
}

@import
	url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap')
	;

.waviy {
	position: relative;
	-webkit-box-reflect: below -20px
		linear-gradient(transparent, rgba(0, 0, 0, .2));
	font-size: 45px;
}

.waviy span {
	font-family: 'Alfa Slab One', cursive;
	position: relative;
	display: inline-block;
	color: #FFC0C7;
	text-transform: uppercase;
	animation: waviy 1s infinite;
	animation-delay: calc(.1s * var(- -i));
}

@
keyframes waviy { 0%,40%,100% {
	transform: translateY(0)
}
20
%
{
transform
:
translateY(
-20px
)
}
}
</style>
<meta charset="ISO-8859-1">
<title>Ebook: Setting</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7">
	<%@include file="all_components/navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="waviy text-center ">
		<span style="-i: 1">HELLO</span> <span style="-i: 2">${userobj.name }</span>
	</div>
	<div class="container">
		<div class="row p-3">
			<div class="col-sm-4">
				<a href="sell_book.jsp" class="text-decoration-none">
					<div class="card card-1 ">
						<div class="card-body text-center	text-white">
							<h5 class="card-title">
								<i class="fa-solid fa-book fa-4x "></i>
							</h5>
							<p class="card-text h2">Sell Old Book</p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-sm-4">
				<a href="old_book.jsp">
					<div class="card card-6 ">
						<div class="card-body text-center	 text-white">
							<h5 class="card-title">
								<i class="fa-solid fa-book-open fa-4x "></i>
							</h5>
							<p class="card-text h3">Old Book  by you</p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-sm-4">
				<a href="edit_profile.jsp">
					<div class="card card-2 ">
						<div class="card-body text-center	 text-white">
							<h5 class="card-title">
								<i class="fa-solid fa-user  fa-4x"></i>
							</h5>
							<p class="card-text h2">Edit Profile</p>
						</div>
					</div>
				</a>
			</div>
		</div>

		<div class="row p-3">
			<div class="col-sm-4">
				<a href="user_address.jsp">
					<div class="card card-3">
						<div class="card-body text-center	 text-white">
							<h5 class="card-title">
								<i class="fa-solid fa-location-pin fa-3x"></i>
							</h5>
							<p class="card-text h2">My Address</p>
							<p class="card-text ">Edit Address</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-sm-4">
				<a href="order.jsp">
					<div class="card card-4 ">
						<div class="card-body text-center	 text-white">
							<h5 class="card-title">
								<i class="fa-solid fa-box-open  fa-3x"></i>
							</h5>
							<p class="card-text h2">My Orders</p>
							<p class="card-text">Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-sm-4">
				<a href="helpline.jsp">
					<div class="card card-5 ">
						<div class="card-body text-center	 text-white">
							<h5 class="card-title">
								<i class="fa-solid fa-phone fa-3x"></i>
							</h5>
							<p class="card-text h2">Help Center</p>
							<p class="card-text">24*7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>