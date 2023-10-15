package com.adi.servlet;

import java.sql.*;

public class ConnectionDatabase 
{

	public static Connection getCon()
	{  
		Connection con=null;
		try
		{  
			//step1 load the driver class  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			con=DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe","system","iamvegeta");
			return con;
		}
		catch(Exception e)
		{ 
			System.out.println(e);
			return null;				
		}  
	}

}



