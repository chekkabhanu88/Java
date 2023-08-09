package com.bp.bootdemo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Book 
{
	@Id
	@Column(name="book_id")
	private String bookId;
	
	@Column(name="book_title")
	private String bookTitle;
	
	@Column(name="book_author")
	private String bookAuthor;
	
	@Column(name="book_category")
	private String bookCategory;
	
	@Column(name="book_price")
	private double bookPrice;
	
	@Column(name="copies")
	private int availableCopies;
	
	public Book() {}

	public Book(String bookId, String bookTitle, String bookAuthor, String bookCategory, int availableCopies,double bookPrice) 
	{
		
		this.bookId = bookId;
		this.bookTitle = bookTitle;
		this.bookAuthor = bookAuthor;
		this.bookCategory = bookCategory;
		this.availableCopies = availableCopies;
		this.bookPrice=bookPrice;
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

	public String getBookAuthor() {
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

	public int getAvailableCopies() {
		return availableCopies;
	}

	public void setAvailableCopies(int availableCopies) {
		this.availableCopies = availableCopies;
	}
	
	public double getBookprice() {
		return bookPrice;

}
	public void setBookprice(double bookPrice) {
		this.bookPrice = bookPrice;
	}
}
	
