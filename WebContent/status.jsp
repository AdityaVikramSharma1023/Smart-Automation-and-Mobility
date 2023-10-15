<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "com.adi.servlet.*" %>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Status</title>
<link rel="stylesheet" href="CSS/status.css">
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
<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) 
{
	%>
	<h1>My Tickets</h1>
	<%
	try{
		Connection con = ConnectionDatabase.getCon();
		Statement st = con.createStatement();
		String query = "select * from RailPassenger where username='" + session.getAttribute("username") + "'";
		ResultSet rs = st.executeQuery(query);
		
		
		if(rs.next()==false)
		{
		%>
		<h3>No Tickets Booked</h3>
		<%	
		}
		else{
			do{
			%>
			<div class="pass">
			<%
			out.println("* "+rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+"<br>");
			%>
			</div>
			<%
			}while (rs.next()); 
		}
	}
	catch(Exception e)
	{
		out.println("error");
		
	}
}
else
{
%>
</div>
<div class="center">
<form class="c" method="POST" action="Status">
<input type="submit" value="Ticket Status" name="ticket_status">
<input type="submit" value="Cancel Ticket" name="cancel_ticket">
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
</body>
</html>