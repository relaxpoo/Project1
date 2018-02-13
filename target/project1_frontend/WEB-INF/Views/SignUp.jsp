<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shopaholics</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<link rel="stylesheet" href="CSS/font-awesome.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	<%@ include file="header.jsp" %>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/global.css" />" />
</head>
<body>

<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-2 col-sm-2 col-xs-12"></div>
	<div class="col-md-8 col-sm-6 col-xs-12">

	<!---form start--->
	<form:form id="registeruser" modelAttribute="customer" action="SignUp" class="form-container" method="POST" commandname="Customer">
	<h2>SignUp Here</h2>
	<i>Be a Shopaholic...</i><br><br>

	ENTER YOUR DETAILS :-
	<div class="row">
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="fistrname">First Name</label>
			<form:errors path="firstname" cssStyle="color: #ff0000" />
			<form:input type="text" path="firstname" name="firstname" id="firstname" class="form-control input-sm" placeholder="First Name" height="5"/>
			</div>
			</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="lastname"> Last Name</label>
			<form:input type="text" path="lastname" name="lastname" id="lastname" class="form-control input-sm" placeholder="Last Name" height="5" />
			</div>
			</div>
		</div>	
		<div class="row">
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="Email">Email Address</label>
			<form:errors path="email" cssStyle="color: #ff0000" />
			<form:input type="email" path="email" name="email" id="email" class="form-control input-sm" placeholder="Email" height="5"/>
			</div>
			</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="phone">Phone</label>
			<form:errors path="phonenumber" cssStyle="color: #ff0000" />
			<form:input type="tel" path="phonenumber" name="phonenumber" id="phonenumber" class="form-control input-sm" placeholder="Phone Number" height="5"/>
			</div>
			</div>
		 </div>

		ENTER YOUR CREDENTIALS :-	
		 <div class="row">	
		 <div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="username">User Name</label>
			<form:errors path="username" cssStyle="color: #ff0000" />
			<form:input type="text" path="username" name="username" id="username" class="form-control input-sm" placeholder="User Name" height="5"/>
			</div>
			</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="password">Password</label>
			<form:errors path="password" cssStyle="color: #ff0000" />
			<form:input type="password" path="password" name="password" id="password" class="form-control input-sm" placeholder="Password" height="5"/>
			</div>
		
		</div>
		</div>
		
		ENTER BILLING ADDRESS :-
		 <div class="row">	
		 <div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
    		<label for="apartmentnumber">Apartment No.</label>
    		<form:input type="text" path="billingaddress.apartmentnumber" class="form-control" id="apartmentnumber" placeholder="Apartment Number" />
  		</div>
		</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
    		<label for="streetname">Street Name</label>
    		<form:input type="text" path="billingaddress.streetname" class="form-control" id="streetname" placeholder="Street Name" />
  		</div>
		
		</div>
		</div>
  		
		<div class="row">	
		 <div class="col-xs-4 col-sm-4 col-md-4">
			<div class="form-group">
			<label for="city">City</label>
			<form:input type="text" path="billingaddress.city" name="city" id="city" class="form-control input-sm" placeholder="City"/>
			</div>
			</div>	
			<div class="col-xs-4 col-sm-4 col-md-4">
			<div class="form-group">
			<label for="state">State</label>
			<form:input type="text" path="billingaddress.state" name="state" id="state" class="form-control input-sm" placeholder="State"/>
			</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
			<div class="form-group">
			<label for="zipcode">Zipcode</label>
			<form:input type="text" path="billingaddress.zipcode" name="zipcode" id="zipcode" class="form-control input-sm" placeholder="Zipcode"/>
			</div>
			</div>
		</div>

		ENTER SHIPPING ADDRESS :-	
  		 <div class="row">	
		 <div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
    		<label for="apartmentnumber">Apartment No.</label>
    		<form:input type="text" path="shippingaddress.apartmentnumber" class="form-control" id="apartmentnumber" placeholder="Apartment Number" />
  		</div>
		</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
    		<label for="streetname">Street Name</label>
    		<form:input type="text" path="shippingaddress.streetname" class="form-control" id="streetname" placeholder="Street Name" />
  		</div>
		
		</div>
		</div>
		<div class="row">	
		 <div class="col-xs-4 col-sm-4 col-md-4">
			<div class="form-group">
			<label for="city">City</label>
			<form:input type="text" path="shippingaddress.city" name="city" id="city" class="form-control input-sm" placeholder="City" />
			</div>
			</div>	
			<div class="col-xs-4 col-sm-4 col-md-4">
			<div class="form-group">
			<label for="state">State</label>
			<form:input type="text" path="shippingaddress.state" name="state" id="state" class="form-control input-sm" placeholder="State" />
			</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
			<div class="form-group">
			<label for="zipcode">Zipcode</label>
			<form:input type="text"  path="shippingaddress.zipcode" name="zipcode" id="zipcode" class="form-control input-sm" placeholder="Zipcode" />
			</div>
			</div>
		</div>
		<br>	
  		<form:button id="signup" type="submit" class="btn btn-danger btn-block">Submit</form:button>
		</form:form>
		<!---form end--->

		</div>
		<div class="col-md-8 col-sm-6 col-xs-12"></div>
</div>
</div>
</body>
</html>


