
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

<!-- Bootstrap Darklytheme CSS -->
<!--   <ink rel="stylesheet" href="<c:url value="${css}/bootstrapDarklytheme.css" />"/>  -->

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
		<%@include file="../../header.jsp"%>

		<!-- Page content -->
		<div class="content">


			<div class="container-fluid bg">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-12"></div>
					<div class="col-md-8 col-sm-6 col-xs-12">

						<!---form start--->
						<form:form id="registerform" method="POST" class="form-container"
							modelAttribute="user">
							<h2>SignUp Here</h2>
							<i>Be a Shopaholic...</i>
							<br>
							<br>

	ENTER YOUR DETAILS :-
	<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="fistrname">First Name</label>
										<form:input type="text" path="firstName" name="firstname"
											id="firstname" class="form-control input-sm"
											placeholder="First Name" height="5" />
										<form:errors path="firstName" cssStyle="color: #ff0000" />

									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="lastname"> Last Name</label>
										<form:errors path="lastName" cssStyle="color: #ff0000" />
										<form:input type="text" path="lastName" name="lastname"
											id="lastname" class="form-control input-sm"
											placeholder="Last Name" height="5" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="Email">Email Address</label>
										<form:input type="email" path="email" name="email" id="email"
											class="form-control input-sm" placeholder="Email" height="5" />
										<form:errors path="email" cssStyle="color: #ff0000" />

									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="phone">Phone</label>
										<form:errors path="contactNumber" cssStyle="color: #ff0000" />
										<form:input type="tel" path="contactNumber" name="phonenumber"
											id="phonenumber" class="form-control input-sm"
											placeholder="Phone Number" height="5" />
										<form:errors path="contactNumber" cssStyle="color: #ff0000" />

									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="password">Password</label>
										<form:input type="password" path="password" name="password"
											id="password" class="form-control input-sm"
											placeholder="Password" height="5" />
										<form:errors path="password" cssStyle="color: #ff0000" />
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="password">Confirm Password</label>
										<form:input type="password" path="confirmPassword"
											name="password" id="password" class="form-control input-sm"
											placeholder="Re-enter Password" height="5" />
										<form:errors path="confirmPassword" cssStyle="color: #ff0000" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6"></div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-4">Select Role</label>
								<div class="col-md-8">
									<label class="radio-inline"> <form:radiobutton
											path="role" value="USER" checked="checked" /> User
									</label> <label class="radio-inline"> <form:radiobutton
											path="role" value="SUPPLIER" /> Supplier
									</label>
								</div>
							</div>

							<form:button id="signup" type="submit"
								class="btn btn-danger btn-block" name="_eventId_billing">
								
								Next <span class="glyphicon glyphicon-chevron-right"></span>
							</form:button>
							<br>
							
							<div class="text-right">
								Already Registered? - <a href="${contextRoot}/login">SignIn Here</a>
								</div>
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
