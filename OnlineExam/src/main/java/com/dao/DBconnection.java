package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.helper.User;



public class DBconnection {
	
	 public boolean validateUser(String name, String password , int id) {
	        try {  
	            Class.forName("com.mysql.cj.jdbc.Driver");  
	            
	            Connection con = DriverManager.getConnection(
	                "jdbc:mysql://localhost/online_exam", "root", "root"
	            );
	            
	           // select query
	            String query = "SELECT * FROM students_data WHERE Name = ? AND Password = ?  AND idstudents=?" ;
	            
	            PreparedStatement stmt = con.prepareStatement(query);
	            stmt.setString(1, name);
	            stmt.setString(2, password);
	            stmt.setInt(3, id);
	            
	            ResultSet rs = stmt.executeQuery();
	            
	            boolean result = rs.next(); // Check if any record matches the query
	            
	            rs.close();
	            stmt.close();
	            con.close();
	            
	            return result;
	        } catch (Exception e) {
	            System.out.println(e);
	            return false;
	        }
	    }
	    
	    public boolean registerNewStudent(String name, String password, String email, String rollNo, int id) {
	        try {  
	            Class.forName("com.mysql.cj.jdbc.Driver");  
	            
	            Connection con = DriverManager.getConnection(
	                "jdbc:mysql://localhost/online_exam", "root", "root"
	            );
	            
	            //insert query
	            String query = "INSERT INTO students_data (Name, Password, Email, RollNo, idstudents) VALUES (?, ?, ?, ?, ?)";
	            
	            PreparedStatement stmt = con.prepareStatement(query);
	            stmt.setString(1, name);
	            stmt.setString(2, password);
	            stmt.setString(3, email);
	            stmt.setString(4, rollNo);
	            stmt.setInt(5, id);
	           
	            int rowsAffected = stmt.executeUpdate();
	            
	            stmt.close();
	            con.close();
	            
	            return rowsAffected > 0;
	        } catch (Exception e) {
	            System.out.println(e);
	            return false;
	            
	          
	        }
	    }
	    
	    public boolean updateUser(int id, String result, int score) {
	    	
	    	try{  
	    		Class.forName("com.mysql.cj.jdbc.Driver");  
	    		  
	    		Connection con=DriverManager.getConnection(  
	    		"jdbc:mysql://localhost/online_exam","root","root");  
	    		  
	    		java.sql.Statement st=con.createStatement();
	    		
	    		  //Update query
	              PreparedStatement s = con.prepareStatement("UPDATE students_data SET Result = '"+result+"',"
	              		+ " score  = "+score+" WHERE idstudents = "+id);
	    int i=s.executeUpdate();
	    	      
	    	      
	    	      if(i>0) {
	    	    	  System.out.println( i+" Records upadted");
	    	    	  return true;	
	    	      }
	    	      
	    	      con.close();  
	    	    }
	    		catch(Exception e){ System.out.println(e);}
	    	      return false;     
	    	}
	    
	    public static List<com.helper.User> getAllUsers() {
	        List<com.helper.User> userList = new ArrayList<>();
	        
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            
	            Connection con = DriverManager.getConnection(
	                "jdbc:mysql://localhost/online_exam", "root", "root"
	            );
	            
	            String query = "SELECT * FROM students_data";
	            
	            PreparedStatement stmt = con.prepareStatement(query);
	            
	            ResultSet rs = stmt.executeQuery();
	            
	            while (rs.next()) {
	                int id = rs.getInt("idstudents");
	                String name = rs.getString("Name");
	                String email = rs.getString("Email");
	                String rollNo = rs.getString("RollNo");
	                int score = rs.getInt("score");
	                String result = rs.getString("Result");
	                
	                User user = new User(id, name, email, rollNo, score, result);
	                userList.add(user);
	            }
	            
	            rs.close();
	            stmt.close();
	            con.close();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        
	        return userList;
	    }

	    private Connection getConnection() {
			// TODO Auto-generated method stub
			return null;
		}

}
