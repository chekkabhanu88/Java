package com.bp.jdbcDemo;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
public class test3
{
    public static void main( String[] args ) 
    {
    	
    	Connection con=null;
    	PreparedStatement pst=null;
    	ResultSet rs =null;
    	String url="jdbc:mysql://localhost:3306/prolifics";
    	try
    	{
    	
    	//Class.forName("com.mysql.cj.jdbc.Driver");
    	 
    	 con=DriverManager.getConnection(url,"root","19471Aa@1207");
    	 pst = con.prepareStatement("select  deptno,deptname,location from department"
    			 ,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
    	 rs=pst.executeQuery();
    	 rs.moveToInsertRow();
    	 rs.updateInt(1, 70);
    	 rs.updateString(2, "finance");
    	 rs.updateString(3, "mumbai");
    	 rs.insertRow();
    	// if(rs.rowInserted())
    		 System.out.println("1 row inserted");
    	 
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
