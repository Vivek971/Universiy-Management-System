package in.sp.backend;

import java.sql.Connection;
import java.sql.DriverManager;

public class InsertDemo
{
	public static void main(String[] args)
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ums","root","qwerty123");
			
			System.out.println("Hi");
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}

	