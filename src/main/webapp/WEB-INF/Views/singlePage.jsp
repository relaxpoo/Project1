<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<html lang="en">
<head>
<title>Shopaholics</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
  <style>
  /*breadcrumb*/

	ul.breadcrumb {
    padding: 10px 16px;
    list-style: none;
    background-color: #000;
}
ul.breadcrumb li {
    display: inline;
    font-size: 16px;
}
ul.breadcrumb li+li:before {
    padding: 8px;
    color: white;
    content: "/\00a0";
}
ul.breadcrumb li a {
    color: #fff;
    text-decoration: none;
}
ul.breadcrumb li a:hover {
    color: #fff;
    text-decoration: underline;
}

  
  
  
  
  </style>
  
  
  
</head>
<body>


	<div class="container-fluid bg2">
		<div>
			<h2 class="text-center">View Product</h2>
		</div>
		<hr>


	<!-- Breadcrumb -->
	<div class="row">

		<div class="col-xs-12">


			<ul class="breadcrumb">

				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/Products">Products</a></li>
				<li class="active">${product.name}</li>

			</ul>


		</div>


	</div>


	<div class="row">

		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-4">

			<div class="thumbnail">

				<img src="${images}/${product.code}.jpg" class="img img-responsive" />

			</div>

		</div>


		<!-- Display the product description -->
		<div class="col-xs-12 col-sm-8">
			<h3>${product.brand}</h3>
			<hr>

			<p>${product.description}</p>
			<hr />
			<h4>
				Price: <strong> &#8377; ${product.unitPrice} /-</strong>
			</h4>
			<hr />


			<c:choose>
				<c:when test="${product.quantity <1}">
					<h6>
						Qty. Available: <span style="color: red">Out of Stock!</span>
					</h6>
					<hr>
				</c:when>
				<c:otherwise>
					<h6>Qty. Available: ${product.quantity}</h6>
					<hr>
				</c:otherwise>
			</c:choose>

			<security:authorize access="isAnonymous() or hasAuthority('USER')">


				<c:choose>
				
				<c:when test="${product.quantity < 1}">
				
					<a href="javascript:void(0)" class="btn btn-danger disabled" style="font-size:20px"><strike>
					<i class="fa fa-opencart" ></i> Add to Cart</strike></a>
					
				</c:when>
				<c:otherwise>				
				
				<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-danger" style="font-size:20px">
					<i class="fa fa-opencart" ></i> Add to Cart</a>
				
				
				
						
				</c:otherwise>
			
			</c:choose>
			</security:authorize>
			
			
			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-danger">
				<span class="glyphicon glyphicon-pencil"></span> Edit</a>
			</security:authorize>	
						
			

			<a href="${contextRoot}/show/all/Products" class="btn btn-warning">
				Continue Shopping</a>
					
		</div>

	
	</div>

</div>
</body>
</html>

