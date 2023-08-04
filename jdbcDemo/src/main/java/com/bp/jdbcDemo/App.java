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
