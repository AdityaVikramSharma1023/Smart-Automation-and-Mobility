<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import = "com.adi.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel Page</title>
<link rel="stylesheet" href="CSS/cancel.css">
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
		<form  class="menu" action="Welcome" method="post">
			<input type="submit" value="User" name="account_details"> <input
				type="submit" value="Book Tickets" name="book_ticket"> <input
				type="submit" value="My Tickets" name="status"> <input
				id="x" type="submit" value="Logout" name="logout">
		</form>
	</div>
<%String cancel=request.getParameter("cancel");
if(cancel!=null)
{
	try 
	{
		Connection con = ConnectionDatabase.getCon();
		PreparedStatement st = con.prepareStatement("delete from RailPassenger where ticket_no='" + cancel + "'");
		st.executeUpdate();
		System.out.println("ok");
		out.println("<h1>Successfully deleted</h1>");
	}
	catch(Exception e)
	{
		System.out.println(e);
		out.println("<h1>Re-Enter Ticket Number</h1>");
	}
}
%>
<div id="cancel">
<form class="can" method="POST" action="cancel.jsp">
Enter Ticket No:<input type="text" name="cancel">
<input type="submit" value="Cancel">
</form>
</div>
<div class="rightside">
<div class="a1"><img src="CSS/adi.jpeg" style="width:170px;height:170px"></div>
<div class="a1"><img src="CSS/gopal.JPG" style="width:170px;height:170px"></div>
<h2>Contact Us</h2>
<h2>8335839309</h2>
<h2>sam@gmail.com</h2>
</body>
</html>