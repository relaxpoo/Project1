

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<html lang="en">
<head>
<title>Shopaholics - ${title}</title>

<script>
	window.menu = '${title}'
	window.contextRoot = '${contextRoot}'
</script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- FONT Awesome CSS -->
<link href="${css}/font-awesome.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/global.css" />" />

</head>
<body>
	<div class="wrapper">

		<!--Navigation bar -->
		<%@include file="../flows-shared/header.jsp"%>

		<!-- Page content -->
		<div class="content">

			<div class="container-fluid bg">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-12"></div>
					<div class="col-md-8 col-sm-6 col-xs-12">

						<!---form start--->
						<form:form id="billingform" method="POST" class="form-container"
							modelAttribute="billing">
							<h2>SignUp Here</h2>
							<i>Be a Shopaholic...</i>
							<br>
							<br>

	ENTER BILLING ADDRESS :-
	
			<div class="row">	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
    		<label for="addressLineOne">Address Line 1:</label>
    		<form:input type="text" path="addressLineOne" class="form-control" id="addressLineOne" placeholder="Address Line 1:" />
    		<form:errors path="addressLineOne" cssStyle="color: #ff0000" />
	  		</div>
			</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
    		<label for="addressLineTwo">Address Line 2:</label>
    		<form:input type="text" path="addressLineTwo" class="form-control" id="addressLineTwo" placeholder="Address Line 2:" />
    		<form:errors path="addressLineOne" cssStyle="color: #ff0000" />
	  		</div>
			</div>
			</div>
  		
			<div class="row">	
		 	<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="city">City</label>
			<form:input type="text" path="city" name="city" id="city" class="form-control input-sm" placeholder="City"/>
			<form:errors path="city" cssStyle="color: #ff0000" />
			</div>
			</div>	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="state">State</label>
			<form:input type="text" path="state" name="state" id="state" class="form-control input-sm" placeholder="State"/>
			<form:errors path="state" cssStyle="color: #ff0000" />
			</div>
			</div>
			</div>
			<div class="row">	
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="country">Country</label>
			<form:input type="text" path="country" name="country" id="country" class="form-control input-sm" placeholder="country"/>
			<form:errors path="country" cssStyle="color: #ff0000" />
			</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
			<label for="postalCode">Postalcode</label>
			<form:input type="text" path="postalCode" name="postalCode" id="postalCode" class="form-control input-sm" placeholder="PostalCode"/>
			<form:errors path="postalCode" cssStyle="color: #ff0000" />
			</div>
			</div>
			</div>
			
					<!-- Submit buttons to go back and forth -->
			
							<form:button id="signup" type="submit"
								class="btn btn-dark btn-block" name="_eventId_personal">
								    <-- Previous  
							
							</form:button>
							
							<form:button id="signup" type="submit"
								class="btn btn-block btn-danger" name="_eventId_confirm">
								Next -->
							
							</form:button>
								
								
								
</form:form>


							<div class="col-md-8 col-sm-6 col-xs-12"></div>
					</div>
				</div>
			</div>



			<!-- Footer -->
			<%@ include file="../../footer.jsp"%>
		</div>
		</div>


		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
		
</body>
</html>
