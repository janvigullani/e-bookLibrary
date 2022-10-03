<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #303f9f;"></div>

<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book"></i> EBooks
			</h3>
		</div>
		

		<c:if test="${not empty userobj }">
		<div class="col-md-5">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-magnifying-glass"></i>Search
				</button>
			</form>
		</div>
		
			<div class="col-md-4">
			<a href="cart.jsp" class="btn btn-warning text-white"><i class="fa-solid fa-cart-shopping "></i> Cart</a>
				<a href="" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i> ${userobj.name } </a> <a
					href="Logout" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i> Logout</a>
			</div>
		</c:if>
		<c:if test="${ empty userobj }">
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-magnifying-glass"></i>Search
				</button>
			</form>
		</div>
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user-plus"></i> Login</a> <a href="register.jsp"
					class="btn btn-primary"><i class="fa-solid fa-right-to-bracket"></i>
					Register</a>
		</c:if>
	</div>
</div>
</div>



<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="index.jsp"> <i
		class="fas fa-house-user"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">
					Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_recent_book.jsp"> <i class="fa-solid fa-book-open"></i>
					Recent Book
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_new_book.jsp"><i class="fa-solid fa-book"></i> New
					Book</a></li>

			<li class="nav-item active"><a class="nav-link"
				href="all_old_book.jsp"> <i class="fa-solid fa-book-open-reader"></i>
					Old Book
			</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light"> <i
				class="fa-solid fa-gear"></i> Setting
			</a> <a href="contact_us.jsp" class="btn btn-light ml-2"> <i
				class="far fa-user"></i> Contact Us
			</a>
		</form>
	</div>
</nav>