package com.helloJSP;

import java.sql.*;

public class Driver {
	

	
	public static void main(String[] args) {
		
		try{
			// 1. get a connection to the DataBase
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sport", "root", "EnterTheMatrix6486");
			// 2. create a statement
			Statement myStmt = myConn.createStatement();
			// 3. Execute SQL query
			ResultSet myRs = myStmt.executeQuery("select * from speler");
			// 4. Process the result set
			while(myRs.next()){
				System.out.println(myRs.getString("roepnaam") + ", " + myRs.getString("achternaam"));
			}
			
			System.out.println(myConn.isValid(0));
			
			
			
		}
		catch(Exception exc){
			
		}
		

	}
	

}
