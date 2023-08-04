package com.bp.jdbcDemo;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
public class test1
{
    public static void main( String[] args ) 
    {
    	
    	Connection con=null;
    	PreparedStatement pst=null;
    	PreparedStatement pst2=null;
    	ResultSet rs =null;
    	ResultSetMetaData rsmd =null;
    	String url="jdbc:mysql://localhost:3306/prolifics";
    	try
    	{
    	
    	//Class.forName("com.mysql.cj.jdbc.Driver");
    	 
    	 con=DriverManager.getConnection(url,"root","19471Aa@1207");
    	 con.setAutoCommit(false);
    	 pst=con.prepareStatement("delete from employee");
    	 int count=pst.executeUpdate();
    	 con.commit();
    	 System.out.println(count +"rows deleted");
    	 pst2=con.prepareStatement("insert into department values(?,?,?)");
    	 pst2.setInt(1, 50);
    	 pst2.setString(2,"finance");
    	 pst2.setString(3,"mumbai");
    	 count= pst2.executeUpdate();
    	System.out.println(count +"rows inserted");
    	con.rollback();
    	 
    	 
    	 
    	
    	
    	}
    	catch(SQLException ex)
    	{
    		ex.printStackTrace();
    	}
    	finally
    	{
    		try
    		{
    			if(rs!=null) rs.close();
    			if(pst !=null) pst.close();
    			if(con != null) con.close();
    	    }
    		catch(SQLException ex)
    		{
    			ex.printStackTrace();
    		}
    	
    }
    	
    	
    }
}
