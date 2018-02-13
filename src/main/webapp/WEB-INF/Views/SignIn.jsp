
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Shopaholics - ${title}</title>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

		<%@ include file="header.jsp"%>

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/global.css" />" />
</head>

<body>

	<div class="wrapper">
	<div class="container-fluid bg">





		<!-- Page Content -->

		<div class="content">
			
				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-12"></div>

					<div class="col-md-5 col-sm-5 col-xs-12">

						<!---form start--->


						<form class="form-container" class="form-horizontal"
							action="${contextRoot}/login" method="POST" id="loginForm">

							<c:if test="${not empty message}">
								<div class="msg">${message}</div>
							</c:if>

							<c:if test="${not empty error}">
								<div class="error" style="color: #ff0000;">${error}</div>
							</c:if>

							<h2>Login Here</h2>
							<div class="form-group">
								<label for="username">Email Id:</label> <input type="text"
									class="form-control" name=username id="username"
									placeholder="username">
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" name=password id="exampleInputPassword1"
									placeholder="Password">
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Remember me
								</label>
							</div>

							<button type="submit" class="btn btn-danger btn-block">Submit</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />


							<div class="row">
								<div class="col-md-4 col-sm-4 col-xs-12"></div>
								<br>
						
								<div style="position:absolute;right:20px;bottom:10px;">
								New to Shopaholics - <a href="${contextRoot}/register">Register Here</a>
								</div>
								</div>
								</form>
							</div>
						

					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-12"></div>

				</div>
				<br> <br>


				<!---form end--->

			</div>

<br>
<br>
		</div>


		<!-- Footer comes here -->
		<%@include file="footer.jsp"%>

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>