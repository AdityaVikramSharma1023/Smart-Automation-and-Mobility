<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.adi.servlet.*" %>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<link rel="stylesheet" href="CSS/user_details.css">
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
<h1>User Details</h1>
<div id="user">
<h2>${username}</h2>
<h2>${password}</h2>
<%
if (session.getAttribute("username") != null) {
Connection con = ConnectionDatabase.getCon();
Statement st = con.createStatement();
String query = "select * from RailUser where username='" + session.getAttribute("username") + "'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) 
{
	out.println("<h3>"+rs.getString(2)+"<br>");
	out.println(rs.getString(3)+"<br>");
	out.println(rs.getString(4)+"<br>");
	out.println(rs.getString(5)+"<br>");
	out.println(rs.getString(6)+"<br>");
	out.println(rs.getString(7)+"<br>");
	out.println(rs.getString(8)+"</h3>");
}
}
else
{
	response.sendRedirect("login.jsp");
}
%>
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