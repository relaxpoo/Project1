<!DOCTYPE html >
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

							<div class="container">
								<div class="row">
									<div class="col-sm-offset-4 col-sm-4">
										<div class="text-center">
											<h1>Welcome to SHOPAHOLICS</h1>
											<h6>
												<i>Please login and enjoy shopping with us!</i>
											</h6>
										</div>
										<a href="${contextRoot}/login" class="btn btn-lg btn-success">Login
											Here</a>
									</div>
								</div>
							</div>
						</form:form>
					</div>

				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="../../footer.jsp"%>
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
