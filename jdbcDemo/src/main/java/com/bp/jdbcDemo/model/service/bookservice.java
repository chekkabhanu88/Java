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
