<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shopaholics - OrderSummary</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<link rel="stylesheet" href="CSS/font-awesome.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/global.css" />" />
</head>
<body>

<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-2 col-sm-2 col-xs-12"></div>
	<div class="col-md-8 col-sm-6 col-xs-12">

	<!---form start--->
			
			<form class="form-container">
				<h3>
					<strong>Order summary</strong>
					
				</h3>
<hr>
		

			<div class="table-responsive">
				<table class="table table-condensed">
					<thead>
						<tr>
							<td><strong>Order Id</strong></td>
							<td class="text-center"><strong>Order Count</strong></td>
							<td class="text-center"><strong>Order Date</strong></td>
							<td class="text-right"><strong>Totals</strong></td>
							<td class="text-center"><strong>Address</strong></td>
						</tr>
					</thead>
					<tbody>
						<!-- foreach ($order->lineItems as $line) or some such thing here -->
						<c:forEach items="${orderlist}" var="order">
							<tr>
								<td>${order.id}</td>
								<td>${order.orderCount}</td>
								<td>${order.orderDate}</td>
								<td>${order.orderTotal}</td>
								<td>${order.shipping.addressLineOne} ${order.shipping.addressLineTwo} ${order.shipping.city} 
								${order.shipping.state} ${order.shipping.country} ${order.shipping.postalCode}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</form>
		</div>
	</div>

<br>
<br>
<br>
<br>
<br>
<br>

</div>

</body>
</html>

