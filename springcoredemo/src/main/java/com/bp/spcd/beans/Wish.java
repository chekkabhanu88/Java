package com.bp.spcd.beans;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class Wish implements InitializingBean,DisposableBean
{
	
	private String  message;
	public Wish(){
		System.out.println("wish Bean/object is created");
	}
	 public Wish(String message)
	 {
		 this.message=message;
	 }
	 public void setmessage(String message)
	 {
		 this.message=message;
	 }
	 public String getmessage()
	 {
		 return message;
	 }
	 public void wishInit()
	 {
		 System.out.println("wish is initalised");
	 }
	 public void wishDestroy()
	 {
		 System.out.println("wish bean is about to destroyed");
	 }
	 public void afterPropertiesSet()
	 {
		 System.out.println("from afterProportiesSet method");
	 }
	 public void destroy()
	 {
		 System.out.println("from DisposableBean.destroy()");
	 }

}
