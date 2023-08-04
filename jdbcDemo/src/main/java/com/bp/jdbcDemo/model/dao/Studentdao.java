package com.bp.jdbcDemo.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bp.jdbcDemo.model.bean.Student;

public class Studentdao 
{
	private static String url="jdbc:mysql://localhost:3306/prolifics";
	
	public boolean insertstudent(Student student)
	{
		int count=0;
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst= con.prepareStatement("insert into student values(?,?,?,?,?)"))
		{
			pst.setInt(1, student.getReg_id());
			pst.setString(2,student.getName());
			pst.setInt(3,student.getAge());
			pst.setInt(4,student.getStandard());
			pst.setString(5,student.getSection());
			count=pst.executeUpdate();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return count==1;
	}
	
	public ArrayList<Student>  getstudentbystandard(int standard)
	{
		ArrayList<Student> slist= new ArrayList<>();
		
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst= con.prepareStatement("select * from student where standard=?"))
		{
			pst.setInt(1, standard);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next()) 
			{
				slist.add(new Student (rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5)));
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return slist;
		
	}
	
	public ArrayList<Student>  getallstudents()
	{
		ArrayList<Student> slist = new ArrayList<>();
		
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				 PreparedStatement pst= con.prepareStatement("select * from student"))
		{
		      ResultSet rs = pst.executeQuery();
		      while(rs.next())
		      {
		    	  slist.add( new Student(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5)));
		      }
		      
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return slist;
		
	}
	
	public Student getstudentbyname(String name)
	{
		Student s=null;
		try(Connection con= DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst= con.prepareStatement("select * from student where name=?"))
		{
			ResultSet rs= pst.executeQuery();
			
			while(rs.next())
			{
				s= new Student(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5));
			}
		
		}
		catch(Exception ex)
	{
			ex.printStackTrace();
		
	}
		return s;
	
	}	
	
	public boolean deletestudentbyname(String name)
	{
		int count=0;
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst= con.prepareStatement("delete * from student where name=?"))
		{
			pst.setString(1, name);
			count=pst.executeUpdate();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return count==1;
	}
	public boolean deletestudentbyid(int id)
	{
		int count =0;
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst= con.prepareStatement("delete * from student where regd_id=?"))
		{
			pst.setInt(1, id);
			count=pst.executeUpdate();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return count==1;
	}
	
	
	
 
}
