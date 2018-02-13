<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholics</title>

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/global.css" />" />
</head>
<body>

<div class="container-fluid bg">
<div class="row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-6 col-xs-12">

<form class="form-container">
<h3> About Us</h3>

<p>From what started as a small group of passionate fashion loving individuals in Lucknow, India in 2015, to a multinational team, SHOPAHOLICS has grown immensely to what it is today. The SHOPAHOLICS girl is fashion forward yet classy, effortlessly cool and unafraid to venture into different styles.</p>

<br><br><br>

<h3> Our Mission </h3>

<p>SHOPAHOLICS prides itself on offering on-trend styles catering to both young women, that won’t break the bank. SHOPAHOLICS is able to stay on top of the latest fashion trends from around the globe while rapidly bringing these styles to market. So whether you’re searching for boho dresses and graphic tees or patterned blouses, SHOPAHOLICS is the ultimate one-stop-shop for the modern yet economical fashionista.</p>

<br><br><br>

<div class="container">
<h3> Meet Our Team</h3>

<div class="row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-6 col-xs-12">
<img src="<c:url value="/resources/images/aboutuspic.jpg"/>">
<div>
</div>
</div>
</div>
</div>

</form>
</div>
</div>
</div>
</body>

</html>
