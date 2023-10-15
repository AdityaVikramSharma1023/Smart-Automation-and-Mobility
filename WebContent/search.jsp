<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Page</title>
<link rel="stylesheet" href="CSS/search.css">
</head>
<body>
	<div id="logo">
		<img src="CSS/logo.png" alt="">
	</div>
	<div id="home">
		<a href="welcome.jsp" target="_self">
		<img src="CSS/home.png" alt=""></a>
	</div>
	<div class="menubar">
		<form class="menu" action="Welcome" method="post">
			<input type="submit" value="User" name="account_details"> <input
				type="submit" value="Book Tickets" name="book_ticket"> <input
				type="submit" value="My Tickets" name="status"> <input
				id="x" type="submit" value="Logout" name="logout">
		</form>
	</div>
	<div id="search">
		<form class="s" method="POST" action="book.jsp">
		<select name="type">
  		<option>G-TRAIN</option>
  		<option>G-CAR</option>
  		<option>G-BUS</option>
  		</select><br>
		<input type=text name="source" placeholder="Source"><br> 
		<input type=text name="dest" placeholder="Destination"><br>
		<input type="date" name="dot" placeholder="Enter Date"> 
		<input id="btn" type="submit" value="Search">
		</form>
	</div>
	<div class="rightside">
<div class="a1"><img src="CSS/adi.jpeg" style="width:170px;height:170px"></div>
<div class="a1"><img src="CSS/gopal.JPG" style="width:170px;height:170px"></div>
<h2>Contact Us</h2>
<h2>8335839309</h2>
<h2>sam@gmail.com</h2>
</div>
</body>
</html>