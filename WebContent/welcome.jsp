<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.adi.servlet.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.Date.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="CSS/welcome.css">
</head>
<body>

	<div id="logo">
		<img src="CSS/logo.png" alt="">
	</div>
	<div id="home">
		<a href="welcome.jsp" target="_self">
		<img src="CSS/home.png" alt=""></a>
	</div>
	<%
	if (session.getAttribute("username") == null) {
	%>
	<div class="menubar">
		<form class="menu" action="Welcome" method="post">
			<input type="submit" value="Login" name="login"> 
			<input type="submit" value="Signup" name="signup"> 
			<input type="submit" value="Book Tickets" name="book_ticket"> 
			<input id="x" type="submit" value="My Tickets" name="status">
		</form>
	</div>
	<%
		} else {
	%>
	<div class="menubar">
		<form  class="menu" action="Welcome" method="post">
			<input type="submit" value="User" name="account_details"> <input
				type="submit" value="Book Tickets" name="book_ticket"> <input
				type="submit" value="My Tickets" name="status"> <input
				id="x" type="submit" value="Logout" name="logout">
		</form>
	</div>
	<%
		}
	%>
<div class="rightside">
<div class="a1"><img src="CSS/adi.jpeg" style="width:170px;height:170px"></div>
<div class="a1"><img src="CSS/gopal.JPG" style="width:170px;height:170px"></div>
<h2>Contact Us</h2>
<h2>8335839309</h2>
<h2>sam@gmail.com</h2>
</div>
<h1>WELCOME TO SMART MOBILITY</h1>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="CSS/eb1.jpg" style="width:500px;height:250px">
  <div class="text">ELECTRIC BUS</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="CSS/et1.jpg" style="width:500px;height:250px">
  <div class="text">ELECTRIC TRAINS</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="CSS/ec1.jpg" style="width:500px;height:250px">
  <div class="text">ELECTRIC CARS</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 6000); // Change image every 2 seconds
}
</script>
</body>
</html>