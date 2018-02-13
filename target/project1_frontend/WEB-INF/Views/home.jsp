<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html lang="en">
<head>
<title>Shopaholics - ${title}</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/home.css" />" />

</head>
<body>
	<div class="wrapper bg">

		<!-- Page Content-->

		<div class="content">
			<div class="container-fluid text-center ">

				<div class="row">
					<div class="col-md-3 ">
						<p>Shop By Category</p>
					</div>
					<div class="col-md-9 text-center text-muted">
						<i>you love the feminine look, so do we..signup to get the
							look you would love!</i>
					</div>
				</div>

				<!-- SideBar & Carousel -->

				<div class="container-fluid textmuted text-centered">
					<div class="row">

						<div class="col-md-3 bg-grey">
							<%@include file="Sidebar.jsp"%>
						</div>

						<div class="col-md-9">
							<div id="mycarousel" class="carousel slide" data-ride="carousel">

								<!-- Indicators -->
								<ul class="carousel-indicators">
									<li data-target="#demo" data-slide-to="0" class="active"></li>
									<li data-target="#demo" data-slide-to="1"></li>
									<li data-target="#demo" data-slide-to="2"></li>
									<li data-target="#demo" data-slide-to="3"></li>

								</ul>

								<!-- The slideshow -->
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="<c:url value="/resources/images/c35.jpg"/>">
										<div class="carousel-caption">
											<h3></h3>
											<p></p>
										</div>
									</div>
									<div class="carousel-item">
										<img src="<c:url value="/resources/images/c20.jpg"/>">
									</div>
									<div class="carousel-item">
										<img src="<c:url value="/resources/images/c30.jpg"/>">
									</div>
									<div class="carousel-item">
										<img src="<c:url value="/resources/images/newarrivals1.jpg"/>">
									</div>
									<div class="carousel-item">
										<img src="<c:url value="/resources/images/c42.jpg"/>">
									</div>
								</div>

								<!-- Left and right controls -->
								<a class="carousel-control-prev" href="#demo" data-slide="prev">
									<span class="carousel-control-prev-icon"></span>
								</a> <a class="carousel-control-next" href="#demo" data-slide="next">
									<span class="carousel-control-next-icon"></span>
								</a>
							</div>
						</div>
					</div>



					<div class="space"></div>
					<div class="container-fluid textmuted text-center">
						<h2>CHECKOUT OUR BRANDS</h2>
						<hr>

						<div class="row">
							<div class="col-md-3 bg-grey">
							<%@include file="SidebarBrand.jsp"%>
						</div>
							
							<div class="col-sm-3">
							<a href="${contextRoot}/show/category/12/products">
							
								<img class="img-fluid"
									src="<c:url value="/resources/images/d10.jpg"/>">
								<h4>Veromoda</h4>
							</div>
							</a>
							<div class="col-sm-3">
							<a href="${contextRoot}/show/category/13/products">
								<img class="img-fluid"
									src="<c:url value="/resources/images/d7.jpg"/>">
								<h4>Biba</h4>
							</div>
							</a>
							<div class="col-sm-3">
								<a href="${contextRoot}/show/category/14/products">
								<img class="img-fluid"
									src="<c:url value="/resources/images/d5.jpg"/>">
								<h4>Melange</h4>
							</div>
							</a>
						</div>



						<div class="row">
			
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
							<a href="${contextRoot}/show/category/15/products">
								<img class="img-fluid"
									src="<c:url value="/resources/images/d9.jpg"/>">
								<h4>Mango</h4>
							</div>
							<div class="col-sm-3">
							<a href="${contextRoot}/show/category/16/products">
								<img class="img-fluid"
									src="<c:url value="/resources/images/d1.jpg"/>">
								<h4>Forever21</h4>
							</div>
							<div class="col-sm-3">
							<a href="${contextRoot}/show/category/17/products">
								<img class="img-fluid"
									src="<c:url value="/resources/images/d6.jpg"/>">
								<h4>GlobalDesi</h4>
							</div>
						</div>



					</div>



				</div>
			</div>
		</div>


	</div>


</body>

</html>
