<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Setting</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
		"Segoe UI Symbol";
}

.main-container {
	padding: 30px;
}

/* HEADING */
.heading {
	text-align: center;
}

.heading__title {
	font-weight: 600;
}

.heading__credits {
	margin: 10px 0px;
	color: #888888;
	font-size: 25px;
	transition: all 0.5s;
}

.heading__link {
	text-decoration: none;
}

.heading__credits .heading__link {
	color: inherit;
}

/* CARDS */
.cards {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.card {
	margin: 20px;
	padding: 20px;
	width: 500px;
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

.card__link, .card__exit, .card__icon {
	position: relative;
	text-decoration: none;
	color: rgba(255, 255, 255, 0.9);
}

.card__link::after {
	position: absolute;
	top: 25px;
	left: 0;
	content: "";
	width: 0%;
	height: 3px;
	background-color: rgba(255, 255, 255, 0.6);
	transition: all 0.5s;
}

.card__link:hover::after {
	width: 100%;
}

.card__exit {
	grid-row: 1/2;
	justify-self: end;
}

.card__icon {
	grid-row: 2/3;
	font-size: 30px;
}

.card__title {
	grid-row: 3/4;
	font-weight: 400;
	color: #ffffff;
}

.card__apply {
	grid-row: 4/5;
	align-self: center;
}

/* CARD BACKGROUNDS */
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

/* RESPONSIVE */
@media ( max-width : 1600px) {
	.cards {
		justify-content: center;
	}
}

@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap');

.waviy {
  position: relative;
  -webkit-box-reflect: below -20px linear-gradient(transparent, rgba(0,0,0,.2));
  font-size: 60px;
}
.waviy span {
  font-family: 'Alfa Slab One', cursive;
  position: relative;
  display: inline-block;
  color: #fff;
  text-transform: uppercase;
  animation: waviy 1s infinite;
  animation-delay: calc(.1s * var(--i));
  
}
@keyframes waviy {
  0%,40%,100% {
    transform: translateY(0)
  }
  20% {
    transform: translateY(-20px)
  }
}
</style>
</head>
<body style="background-color: #f7f7f7">
	<%@include file="all_components/navbar.jsp"%>
	<div class="main-container">
<div class="waviy">
   <span style="--i:1">HELLO</span>
   <span style="--i:2">${userobj.name }</span>



  </div>s
		<div class="cards">
			<div class="card card-1">
				<div class="card__icon">
					<i class="fas fa-bolt"></i>
				</div>
				<p class="card__exit">
					<i class="fas fa-times"></i>
				</p>
				<h2 class="card__title">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</h2>
				<p class="card__apply">
					<a class="card__link" href="#">Apply Now <i
						class="fas fa-arrow-right"></i></a>
				</p>
			</div>
			<div class="card card-2">
				<div class="card__icon">
					<i class="fas fa-bolt"></i>
				</div>
				<p class="card__exit">
					<i class="fas fa-times"></i>
				</p>
				<h2 class="card__title">Sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua.</h2>
				<p class="card__apply">
					<a class="card__link" href="#">Apply Now <i
						class="fas fa-arrow-right"></i></a>
				</p>
			</div>
			<div class="card card-3">
				<div class="card__icon">
					<i class="fas fa-bolt"></i>
				</div>
				<p class="card__exit">
					<i class="fas fa-times"></i>
				</p>
				<h2 class="card__title">Ut enim ad minim veniam.</h2>
				<p class="card__apply">
					<a class="card__link" href="#">Apply Now <i
						class="fas fa-arrow-right"></i></a>
				</p>
			</div>
			<div class="card card-4">
				<div class="card__icon">
					<i class="fas fa-bolt"></i>
				</div>
				<p class="card__exit">
					<i class="fas fa-times"></i>
				</p>
				<h2 class="card__title">Quis nostrud exercitation ullamco
					laboris nisi.</h2>
				<p class="card__apply">
					<a class="card__link" href="#">Apply Now <i
						class="fas fa-arrow-right"></i></a>
				</p>
			</div>
			<div class="card card-5">
				<div class="card__icon">
					<i class="fas fa-bolt"></i>
				</div>
				<p class="card__exit">
					<i class="fas fa-times"></i>
				</p>
				<h2 class="card__title">Ut aliquip ex ea commodo consequat.
					Duis aute irure dolor.</h2>
				<p class="card__apply">
					<a class="card__link" href="#">Apply Now <i
						class="fas fa-arrow-right"></i></a>
				</p>
			</div>
			<div class="card card-1">
				<div class="card__icon">
					<i class="fas fa-bolt"></i>
				</div>
				<p class="card__exit">
					<i class="fas fa-times"></i>
				</p>
				<h2 class="card__title">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</h2>
				<p class="card__apply">
					<a class="card__link" href="#">Apply Now <i
						class="fas fa-arrow-right"></i></a>
				</p>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>

</body>
</html>