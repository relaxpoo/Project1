<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
<head>
<title>Shopaholics</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- FONT Awesome CSS -->
<link href="${css}/font-awesome.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">


<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/global.css" />" />

<!--Navigation bar -->
<%@include file="../../flows-shared/header.jsp"%>

</head>
<body>

	<div class="container-fluid bg">
	<br>
	<br>
	
		<div class="text-center">
		<h4>Shipping Details</h4>
			<b><i>you are almost there...</i></b>
		</div>

		<div class="row">
			<div class="col-md-2 col-sm-2 col-xs-12"></div>
			<div class="col-md-8 col-sm-8 col-xs-12">


				<form:form method="POST" modelAttribute="shipping" id="billingForm"
					class="form-container">
					<div class="row">
						<div class="col-md-6">
							<p>ADD A NEW SHIPPING ADDRESS:-</p>

							<div class="form-group">
								<label class="control-label for="addressLineOne">
									Address Line One</label>
								<form:input type="text" path="addressLineOne"
									class="form-control" placeholder="Enter Address Line One" />
								<form:errors path="addressLineOne" cssClass="help-block"
									element="em" />

							</div>

							<div class="form-group">
								<label class="control-label for="addressLineTwo">Address
									Line Two</label>

								<form:input type="text" path="addressLineTwo"
									class="form-control" placeholder="Enter Address Line Two" />
								<form:errors path="addressLineTwo" cssClass="help-block"
									element="em" />

							</div>

							<div class="form-group">
								<label class="control-label for="city">City</label>

								<form:input type="text" path="city" class="form-control"
									placeholder="Enter City Name" />
								<form:errors path="city" cssClass="help-block" element="em" />

							</div>

							<div class="form-group">
								<label class="control-label for="postalCode">Postal Code</label>

								<form:input type="text" path="postalCode" class="form-control"
									placeholder="XXXXXX" />
								<form:errors path="postalCode" cssClass="help-block"
									element="em" />

							</div>

							<div class="form-group">
								<label class="control-label for="state">State</label>

								<form:input type="text" path="state" class="form-control"
									placeholder="Enter State Name" />
								<form:errors path="state" cssClass="help-block" element="em" />

							</div>

							<div class="form-group">
								<label class="control-label for="country">Country</label>
								<form:input type="text" path="country" class="form-control"
									placeholder="Enter Country Name" />
								<form:errors path="country" cssClass="help-block" element="em" />
							</div>



							<div class="form-group">
									<button type="submit" name="_eventId_saveAddress"
										class="btn btn-danger btn-block">
										<span class="glyphicon glyphicon-plus"></span> Add Address
									</button>								
							</div>
						</div>

						<!-- select an existing one -->

						<div class="col-md-6 text-left">
							<p>SELECT THIS SHIPPING ADDRESS:-</p>
							<hr />
							
							<div class="col-md-6 text-uppercase">
						
								<c:forEach items="${addresses}" var="address">
										${address.addressLineOne}<br>										
										${address.addressLineTwo}<br>										
										${address.city}-${address.state}<br>						
										${address.country}-${address.postalCode}
									<hr>
									
									<div class="col-md-4 text-center">
									<a href="${flowExecutionUrl}&_eventId_addressSelection&shippingId=${address.id}"
										class="btn btn-danger">Select Address</a>
								</div>
							
								</c:forEach>
							</div>
						
						
							
					
						</div>
					</div>
				</form:form>
			</div>

		</div>


	</div>

</body>
</html>

<%@include file="../../../footer.jsp"%>
