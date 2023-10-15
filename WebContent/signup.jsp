<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import = "com.adi.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
<link rel="stylesheet" href="CSS/signup.css">
</head>
<body>
<div class="sign">
<form method="post" action="Signup">
<h1>Sign Up to get 50% Discount</h1>
<input type="text" name="username" placeholder="ENTER USERNAME"><br>
<input type="password" name="password" placeholder="ENTER PASSWORD"><br>
<input type="password" name="password1" placeholder="CONFIRM PASSWORD"><br>
<input type="text" name="firstname" placeholder="ENTER YOUR NAME"><br>
<input type="text" name="gender" placeholder="ENTER GENDER"><br>
<input type="date" name="dob" placeholder="ENTER DOB"><br>
<input id="btn" type="submit" value="Submit">
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