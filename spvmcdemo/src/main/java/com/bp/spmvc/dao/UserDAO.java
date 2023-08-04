package com.bp.spmvc.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.stereotype.Repository;

import com.bp.spmvc.controller.User;
@Repository
public class UserDAO 
{
	public String url="jdbc:mysql://localhost:3306/prolifics";
     public boolean searchUser(User user)
     {
    	 int count=0;
    	 try
    	 {
    		 Class.forName("com.mysql.jdbc.Driver");
    		 Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
 			PreparedStatement pst= con.prepareStatement("select count(*) from users where username=? and password=?"); 	 
    		 pst.setString(1,user.getUsername());
    		 pst.setString(2, user.getPassword());
    		 ResultSet rs= pst.executeQuery();
    		 if(rs.next()) count=rs.getInt(1);
    	 }
    	 catch(Exception ex)
    	 {
    		 ex.printStackTrace();
    	 }
    	 return count==1;
     }
}
