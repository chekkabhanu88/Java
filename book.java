package com.bp.jdbcDemo.model.bean;

public class book 
{
    private String bookId;
    private String bookTitle;
    private String bookAuthor;
    private String bookCategory;
    private double bookPrice;
    private int copies;
	public book(String bookId, String bookTitle, String bookAuthor, String bookCategory, double bookPrice, int copies) {
		
		this.bookId = bookId;
		this.bookTitle = bookTitle;
		this.bookAuthor = bookAuthor;
		this.bookCategory = bookCategory;
		this.bookPrice = bookPrice;
		this.copies = copies;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getBookAuthor(){
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookCategory() {
		return bookCategory;
	}
	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}
	public double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}
	public int getCopies() {
		return copies;
	}
	public void setCopies(int copies) {
		this.copies = copies;
	}
	
    
}


----------------------------book dao.java--------------------------------------------------------------------------------

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

---------------------------bookservice.java-------------------------------------------------------------------------

  package com.bp.jdbcDemo.model.service;
import java.util.Scanner;

import com.bp.jdbcDemo.model.bean.book;
import com.bp.jdbcDemo.model.dao.bookdao;
public class bookservice 
{

	private static Scanner sc= new Scanner(System.in);
	private bookdao bdao = new bookdao();
	public String  addbook()
	{
		System.out.println("enter book id");
		String bookid=sc.nextLine();
		System.out.println("enter book title");
		String booktitle=sc.nextLine();
		System.out.println("enter book author");
		String bookauthor=sc.nextLine();
		System.out.println("enter book category");
		String bookcategory=sc.nextLine();
		System.out.println("enter book price");
		
		Double bookprice=sc.nextDouble();
		System.out.println("enter book copies");
		int copies= sc.nextInt();
		
		if(bdao.insertBook(new book(bookid,booktitle,bookauthor,bookcategory,bookprice,copies)))
			 return "book details added";
		return "book addition failed";
		
	}
	public void showallbooks()
	{
		for(book b:bdao.getallbooks())
			System.out.println(b.getBookId()+" "+b.getBookTitle()+"  "+b.getBookAuthor()+"  "+b.getBookCategory()+"   "+b.getBookPrice()+"   "+b.getCopies());
	}
	
	public void showbookbycategory()
	{
		System.out.println("enter book category");
		String category=sc.nextLine();
		for(book b:bdao.getbookbycategory(category))
		{
			System.out.println(b.getBookId()+" "+b.getBookTitle()+"  "+b.getBookAuthor()+"  "+b.getBookCategory()+"   "+b.getBookPrice()+"   "+b.getCopies());

		}
	}
	public void showbookbytitle()
	{
		System.out.println("enter book title");
		String booktitle=sc.nextLine();
		book b= bdao.getbookbytitle(booktitle);
		if(b!=null)
		{
			System.out.println(b.getBookId()+" "+b.getBookTitle()+"  "+b.getBookAuthor()+"  "+b.getBookCategory()+"   "+b.getBookPrice()+"   "+b.getCopies());

		}
		else
			System.out.println("book does not exist by title"+booktitle);
	}
	
	public void deletebookbytitle()
	{
		System.out.println("enter boom title");
		String booktitle=sc.nextLine();
		if(bdao.deletebookbytitle(booktitle))
			System.out.println("book deleted Successfully");
		else
			System.out.println("book is not present");
	}
}



------------------------------------------test.java---------------------------------------------------------------

package com.bp.jdbcDemo;

import java.util.Scanner;

import com.bp.jdbcDemo.model.service.bookservice;
public class App
{
	public static void main(String[] args)
	{
		bookservice bs= new bookservice();
		int opt=0;
		Scanner sc= new Scanner(System.in);
		do
		{
			System.out.println("1. addbook");
			System.out.println("2. show all books");
			System.out.println("3. show books by category");
			System.out.println("4. show book by title ");
			System.out.println("5. delete book by title");
			System.out.println("6. exit");
			System.out.println("enter your option :-");
			opt= sc.nextInt();
			sc.nextLine();
			
			switch(opt)
			{
			case 1:
//				bs.addbook();
				System.out.println(bs.addbook());
				break;
			case 2:
				bs.showallbooks();
				break;
			case 3:
				bs.showbookbycategory();
				break;
			case 4:
				bs.showbookbytitle();
				break;
			case 5:
				bs.deletebookbytitle();
				break;
			case 6:
				System.out.println("you are quitting menu");
			default:
				System.out.println("not a correct option");
			}
		}while(opt!=6);
	}
}









