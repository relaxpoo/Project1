<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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

<%@include file="../../flows-shared/header.jsp"%>

</head>

<body>

	<div class="container-fluid bg">
		<div class="alert alert-success">
			<h4 class="text-center">Congratulations! You successfully placed
				your order!! Thank you for visiting Us! Stay Connected...</h4>


		</div>
		<div class="row">
			<div class="col-md-2 col-sm-2 col-xs-12"></div>
			<div class="col-md-8 col-sm-8 col-xs-12">

				<form class="form-container">
					<div class="row">
						<div class="col-md-6">
							<div class="invoice-title">
								<h4>Invoice</h4>
								<h4>Order # ${orderDetail.id}</h4>
							</div>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-6">
							<address>
								<strong>Billed To:</strong><br>
								${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
								${orderDetail.billing.addressLineOne}<br>
								${orderDetail.billing.addressLineTwo}<br>
								${orderDetail.billing.city}<br>
								${orderDetail.billing.postalCode}<br>
								${orderDetail.billing.state}<br>
								${orderDetail.billing.country}
							</address>
						</div>
						<div class="col-md-6">
							<address>
								<strong>Shipped To:</strong><br>
								${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
								${orderDetail.shipping.addressLineOne}<br>
								${orderDetail.shipping.addressLineTwo}<br>
								${orderDetail.shipping.city} -
								${orderDetail.shipping.postalCode}<br>
								${orderDetail.shipping.state}<br>
								${orderDetail.shipping.country}
							</address>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<address>
								<strong>Payment Method:</strong><br> Card Payment <br>
								<strong>User Detail:</strong><br>${orderDetail.user.email}<br>
							</address>
						</div>
						<div class="col-md-6">
							<address>
								<strong>Order Date:</strong><br> ${orderDetail.orderDate}<br>
								<br>
							</address>
						</div>
					</div>



					<div class="row">
						<div class="col-md-12">
							<h3>
								<strong>Order summary</strong>
							</h3>

						</div>

						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<tr>
										<td><strong>Item</strong></td>
										<td class="text-center"><strong>Price</strong></td>
										<td class="text-center"><strong>Quantity</strong></td>
										<td class="text-right"><strong>Totals</strong></td>
									</tr>
								</thead>
								<tbody>
									<!-- foreach ($order->lineItems as $line) or some such thing here -->
									<c:forEach items="${orderDetail.orderItems}" var="orderItem">
										<tr>
											<td>${orderItem.product.name}</td>
											<td class="text-center">&#8377; ${orderItem.buyingPrice}</td>
											<td class="text-center">${orderItem.productCount}</td>
											<td class="text-right">&#8377; ${orderItem.total}</td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr class="visible-xs">
										<td class="text-center">
										<strong>${userModel.cart.grandTotal}</strong></td>
									</tr>
									</tfoot>
							</table>
						</div>
					</div>
					<div class="text-center">
						<a href="${contextRoot}/show/all/Products"
							class="btn btn-lg btn-warning">Continue Shopping</a>
					</div>


				</form>
			</div>
		</div>
	</div>



	<%@include file="../../../footer.jsp"%>

</body>
</html>