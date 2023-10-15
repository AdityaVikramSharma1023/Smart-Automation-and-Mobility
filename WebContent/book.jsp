<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.adi.servlet.*" %>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train Details</title>
<link rel="stylesheet" href="CSS/book.css">
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
String source=request.getParameter("source");
String dest=request.getParameter("dest");
String typ=request.getParameter("type");
String query="Select * from RailTrain where source='"+source+"' and dest='"+dest+"' and Type='"+typ+"'";
try {
	Connection con = ConnectionDatabase.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(query);
	if(rs.next()==false)
	{
	response.sendRedirect("Search");
	}
	else{
		%>
		<h1>Available EVs</h1>
		<%
		do{
		%>
		<div class="right">
		<%
		out.println("* "+rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+"<br>");
		%>
		</div>
		<%
		}while (rs.next()); 
	%>
<div class='left'>
<form class="l" method="POST" action="Book">
<input type="text" name="name" placeholder="Enter Name"><br>
<input type="text" name="age" placeholder="Enter Age"><br>
<input type="text" name="gender" placeholder="Enter Gender"><br>
<input type="text" name="ev_no" placeholder="Enter EV No."><br>
<input id="btn" type="submit" value="Book">
</form>
</div>
</div>
<% }
	}
		catch(Exception e) 
		{
		  out.println(e);
		}
	%>
</body>
</html>