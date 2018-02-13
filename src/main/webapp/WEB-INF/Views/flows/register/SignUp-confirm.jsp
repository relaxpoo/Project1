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
						<form:form id="confirmform" method="POST" class="form-container"
							modelAttribute="user">
							<h2>SignUp Here</h2>
							<i>Be a Shopaholic...</i>
							<br>
							<br>
							<div class="row">
								<div class="col-sm-6">
									<!--columns to display the personal details -->
									<div class="panel panel-danger">
										<div class="panel-heading">
											<p>PERSONAL DETAILS</p>
											<hr>
										</div>
										<div class="panel-body">
											<!-- code to display the personal details-->
											<h4>
												Name : ${registerModel.user.firstName}
													${registerModel.user.lastName}
											</h4>
											<h4>
												Email :${registerModel.user.email}
											</h4>
											<h4>
												Contact :${registerModel.user.contactNumber}
											</h4>

										</div>
										<br>
										<br>
										<br>
										<div class="panel-footer">
											<!-- anchor to move to the edit of personal details -->
											<a href="${flowExecutionUrl}&_eventId_personal"
												class="btn btn-block btn-dark">Edit Details</a>
										</div>
									</div>
								</div>
								<!-- column to display the address -->
								<div class="col-sm-6">
									<div class="panel panel-danger">
										<div class="panel-heading">
											<p>BILLING DETAILS</p>
											<hr>
										</div>
										<div class="panel-body">
											<!-- code to display the communication address-->
											<h4>${registerModel.billing.addressLineOne},</h4>
											<h4>${registerModel.billing.addressLineTwo},</h4>
											<h4>${registerModel.billing.city}-
												${registerModel.billing.state} ,</h4>
											<h4>${registerModel.billing.country}, ${registerModel.billing.postalCode}.</h4>
											
										</div>
										<br>
							
										<div class="panel-footer">
											<!-- anchor to move to edit the address -->
											<a href="${flowExecutionUrl}&_eventId_billing"
												class="btn btn-block btn-dark">Edit Address</a>

										</div>
									</div>
								</div>
							</div>
							<br>
						

							<!-- to provide the confirm button after displaying the details -->
							
								
									<div class="text-center">

										<!-- anchor to move to the success page -->
										<a href="${flowExecutionUrl}&_eventId_submit"
											class="btn  btn-block btn-danger">Proceed To Confirm --></a>
									</div>
									</form:form>
								</div>
							</div>

						
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
