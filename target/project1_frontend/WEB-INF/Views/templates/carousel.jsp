<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.carousel-caption{
top:50%;
transform:translateY(-50%);
text-transform:uppercase;
}
.container
{
margin:4% auto;
}
#icon{
max-width:200px;
margin:1% auto;
}
@media(max-width: 600px)
{
.carousel-caption{
display:none;
}
</style>
</head>

<body>

<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                
                    <img class="first-slide home-image" src="<c:url value="resources/images/P10.jpg"/>" alt="first slide" >
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME TO THE FUSION WORLD</h1>
                            <p>SignUp to checkout our fun collection</p>
                            <br>
                            <button type="button" class="btn btn-default">Get Started</button>
                        </div>
                    </div>
                </div>
                <div class="item">
                <!-- WEB-INF/resources/images/2.jpg -->
                    <img class="second-slide home-image" src="resources/images/P11.jpg" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>The Car Store.</h1>
                            <p>online shopping can make your life more easier</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src="resources/images/P7.jpg" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>The Car You Love</h1>
                            <p>live Freely,Work Happily And Drive Safely!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="forth-slide home-image " src="resources/images/P13.jpg" alt="forth slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Any car can be a "cool" car</h1>
                            <p>your life,your car...you own it!!</p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </body>
    </html>
    