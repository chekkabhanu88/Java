package com.bp.jdbcDemo;

import java.util.Scanner;

import com.bp.jdbcDemo.model.service.studentservice;

public class app1 
{
    public static void main(String[] args)
    {
    	 Scanner sc=new Scanner(System.in);
    	 
    	 studentservice ss = new studentservice();
    	 
    	 do
    	 {
    		 System.out.println("enter 1 for addstudent");
    		 System.out.println("enter 2 for showstudentbyname");
    		 System.out.println("enter 3 for show studentbyid");
    		 System.out.println("enter 4  for showallstudents");
    		 System.out.println("enter 5 for deletestudentbyid");
    		 System.out.println("enter 6 for deletestudentbyname");
    		 System.out.println("enter 7 for exit");
    		 
    		 
    	 }
	
	
}
}