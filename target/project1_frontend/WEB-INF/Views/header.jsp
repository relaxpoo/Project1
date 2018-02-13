
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

<title>Shopaholics</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark sticky-top">
		<a class="navbar-brand" href="${contextRoot}/home">Shopaholics</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
				<li id="home"><a class="nav-link" href="${contextRoot}/home">Home</a></li>

				<li id="aboutus"><a class="nav-link"
					href="${contextRoot}/aboutus">AboutUs</a></li>
				<li id="contact"><a class="nav-link"
					href="${contextRoot}/contactus">ContactUs</a></li>

				<li id="listProducts"><a class="nav-link"
					href="${contextRoot}/show/all/Products">All Products</a></li>
				<security:authorize access="hasAuthority('ADMIN')">
					<li id="manageProducts"><a class="nav-link"
						href="${contextRoot}/manage/product">Manage Products</a></li>
				</security:authorize>
			</ul>

			<ul class="navbar navbar-nav ml-auto">
				<security:authorize access="isAnonymous()">
					<li id="register"><a class="nav-link"
						href="${contextRoot}/register">SignUp</a></li>
					<li id="login"><a class="nav-link" href="${contextRoot}/login">SignIn</a></li>
				</security:authorize>


				<security:authorize access="isAuthenticated()">
					<li class="dropdown" id="userCart">
					<a
						class="btn btn-default dropdown-toggle" href="javascript:void(0)"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true"> ${userModel.fullName} <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu bg-dark text-white ml-auto" aria-labelledby="dropdownMenu1">
							<security:authorize access="hasAuthority('USER')">
								<li id="cart"><a href="${contextRoot}/cart/show"> <i class="fab fa-opencart" style="margin-right:20px;"></i>${userModel.cart.cartLines}</span> - &#8377;
										${userModel.cart.grandTotal}
								</a></li>
								<li role="separator" class="divider"></li>
							</security:authorize>
							<li id="logout"><a href="${contextRoot}/logout">Logout</a></li>
						</ul></li>
				</security:authorize>
			</ul>
		</div>


	</nav>
	
	
<script>
	window.userRole = '${userModel.role}';
</script>

</body>

</html>