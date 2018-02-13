<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Shopaholics</title>

<script>
	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">


<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/global.css" />" />

<%@include file="../../flows-shared/header.jsp"%>

</head>

<body>

	<div class="container-fluid bg">
	<br>

		<div class="text-center">
			<h4>Make Payment</h4>
			<b><i>one more step away...</i></b>
		</div>

		<div class="row">
			<div class="col-md-2 col-sm-2 col-xs-12"></div>
			<div class="col-md-8 col-sm-8 col-xs-12">

				<form class="form-container">

					<div class="row">
						<div class="col-md-6">
							<P>SELECTED ITEMS</P>
							<hr>

							<div class="row">
								<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
									<div class="col-xs-12">

										<div>
											<h5>${cartLine.product.name}</h5>
											<h5>Quantity -${cartLine.productCount}</h5>
											<h5>Buying Price - &#8377; ${cartLine.buyingPrice}/-</h5>
										</div>
										<hr />

									</div>
								</c:forEach>

								<hr>
								<br>

							</div>
								<tfoot>
					<h5><strong>Total &#8377; ${userModel.cart.grandTotal}</strong></h5>

						</div>
					
					

						<div class="col-md-6">


							<P>PAYMENT DETAILS</P>
							<hr>

							<div class="form-group">
								<label for="cardNumber"> CARD NUMBER</label>
								<div class="input-group">
									<input type="text" class="form-control" id="cardNumber"
										placeholder="Valid Card Number" required autofocus /> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label for="expityMonth">EXPIRY DATE</label> <br />
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityMonth"
												placeholder="MM" required />
										</div>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityYear"
												placeholder="YY" required />
										</div>
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cvvCode"> CVV CODE</label> <input type="password"
											class="form-control" id="cvCode" placeholder="CVV" required />
									</div>
								</div>
							</div>


							<ul class="nav nav-pills nav-stacked">
								<li class="active"><a href="#"><span
										class="badge pull-right"> &#8377;
											${checkoutModel.checkoutTotal}/-</span> FINAL PAYMENT:</a></li>
							</ul>
							<br /> <a href="${flowExecutionUrl}&_eventId_pay"
								class="btn btn-danger btn-lg btn-block" role="button">Pay Now</a>

						</div>
					</div>
				</form>

			</div>
		</div>
	</div>



</body>
<%@include file="../../../footer.jsp"%>

</html>