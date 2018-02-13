<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

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
	href="<c:url value="/resources/css/home.css" />" />

</head>
<body>
	<div class="wrapper">

		<!--Navigation bar -->
		<%@include file="header.jsp"%>

		<!-- Page Content (Home)-->
		<c:if test="${userClickHome == true}">
			<%@include file="home.jsp"%>
		</c:if>

		<!-- Page Content (Contact)-->
		<c:if test="${userClickContactUs == true}">
			<%@include file="contactus.jsp"%>
		</c:if>

		<!-- Page Content (About)-->
		<c:if test="${userClickAboutUs == true}">
			<%@include file="aboutus.jsp"%>
		</c:if>

		<!-- Page Content (View All Products)-->
		<c:if
			test="${userClickAllProducts == true or userClickCategoryProducts == true}">
			<%@include file="listProducts.jsp"%>
		</c:if>

		<!-- Page Content (View SingleProduct)-->
		<c:if
			test="${userClickShowProduct == true}">
			<%@include file="singlePage.jsp"%>
		</c:if>
		
		<!-- Page Content (Manage Product)-->
		<c:if
			test="${userClickManageProduct == true}">
			<%@include file="manageProducts.jsp"%>
		</c:if>
		
		<!-- Page Content (Show Cart)-->
		<c:if
			test="${userClickShowCart == true}">
			<%@include file="cart.jsp"%>
		</c:if>
		
		
		
		<!-- Footer -->
		<%@ include file="footer.jsp"%>
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
