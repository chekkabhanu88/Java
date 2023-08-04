package com.bp.jdbcDemo.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bp.jdbcDemo.model.bean.book;

public class bookdao 

{
	private static String url="jdbc:mysql://localhost:3306/prolifics";
	
	public boolean insertBook(book book)
	{
		int count=0;
		
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst=con.prepareStatement("insert into book values(?,?,?,?,?,?)"))
		{
			pst.setString(1, book.getBookId());
			pst.setString(2, book.getBookTitle());
            pst.setString(3, book.getBookAuthor());
            pst.setString(4,book.getBookCategory());
            pst.setDouble(5, book.getBookPrice());
            pst.setInt(6, book.getCopies());
             count= pst.executeUpdate();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return count==1;
	}
	public ArrayList<book> getbookbycategory(String bookcategory)
	{
		ArrayList<book> blist= new ArrayList<>();
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst=con.prepareStatement("select * from book where book_category=?"))
		{
			pst.setString(1, bookcategory);
			ResultSet rs= pst.executeQuery();
			
			while(rs.next())
			{
				blist.add(new book(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6)));
				
			}
			}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return blist;

		
		
	}
	
	public ArrayList<book> getallbooks()
	{
		ArrayList<book> blist= new ArrayList<>();
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst=con.prepareStatement("select * from book "))
		{
			
			ResultSet rs= pst.executeQuery();
			
			while(rs.next())
			{
				blist.add(new book(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6)));
				
			}
			}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return blist;

		
		
	}
	public book  getbookbytitle(String booktitle)
	{
		book b =null;
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst=con.prepareStatement("select * from book where book_title=?"))
		{
			pst.setString(1, booktitle);
			ResultSet rs= pst.executeQuery();
			
			while(rs.next())
			{
				b= new book(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6));
				
			}
			}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return b;
}
	public boolean deletebookbytitle(String bookTitle)
	{
		int count =0;
		try(Connection con=DriverManager.getConnection(url,"root","19471Aa@1207");
				PreparedStatement pst =con.prepareStatement("delete from book where book_title=?"))
		{
			pst.setString(1, bookTitle);
			count= pst.executeUpdate();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return count==1;
	}

}
