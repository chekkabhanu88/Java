package com.bp.bootdemo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

//import com.bp.bootdemo.beans.Employee;
import com.bp.bootdemo.beans.Person;
import com.bp.bootdemo.entity.Book;
import com.bp.bootdemo.entity.Department;
import com.bp.bootdemo.entity.Employee;
import com.bp.bootdemo.repository.BookRepository;
import com.bp.bootdemo.repository.DepartmentRepository;
import com.bp.bootdemo.service.DepartmentService;

@SpringBootApplication
public class BootdemoApplication
{

	
	public static void main(String[] args) 
	{
		
	    ConfigurableApplicationContext container = SpringApplication.run(BootdemoApplication.class, args);
        DepartmentService dr= container.getBean(DepartmentService.class);
        Department d= dr.getDepartmentByDepartmentId(20);
        System.out.println(d.getDepartmentNo()+" "+d.getDepartmentName()+" "+d.getLocation());
        	for(Employee e:d.getEmployees())
        		System.out.println(e.getEmployeeId()+" "+e.getEmployeeName()+" "+e.getEmployeeSalary());
       System.out.println("---------------");		
       Department d1= dr.getDepartmentByDepartmentName("marketing");
       System.out.println(d1.getDepartmentNo()+" "+d1.getDepartmentName()+" "+d1.getLocation());
       for(Employee e1:d1.getEmployees())
    	   System.out.println(e1.getEmployeeId()+" "+e1.getEmployeeName()+" "+e1.getEmployeeSalary());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//SpringApplication.run(BootdemoApplication.class, args);
	    //ConfigurableApplicationContext container = SpringApplication.run(BootdemoApplication.class, args);
	   
	    /*Person p = container.getBean(Person.class);
	    System.out.println(p.getSsn()+" "+p.getName()+" "+p.getAge());
	    System.out.println(p.getAddress().getHno()+" "+p.getAddress().getStreet()+" "+p.getAddress().getCity()+" "+p.getAddress().getState());
	    
	    Employee e= container.getBean(Employee.class);
	    System.out.println(e.getEmpid()+" "+e.getEmpname()+" "+e.getSalary());
	    System.out.println(e.getDepartment().getDeptName()+" "+e.getDepartment().getDpNo()+" "+e.getDepartment().getLocation());*/
	    
	   // BookRepository bookRepository = container.getBean(BookRepository.class);
	    //Book b1= new Book("Hcpp","how to cpp","dietel","c++",10);
	    //bookRepository.save(b1);
	   // Optional<Book> b2 =bookRepository.findById("TCP");
	    
	    /*List<Book> b4= bookRepository.findByBookCategory("java");
	    
	    for(Book b:b4)
	    	System.out.println(b.getBookId()+" "+b.getBookAuthor());*/
	    
	   // Optional<Book> b5 = bookRepository.findByBookPrice(650.00);
	    //if(b5.isPresent())
	    //	System.out.println(b5.get().getBookId()+" "+b5.get().getBookAuthor());
	  /*  if(b2.isPresent())
	    {
	    	Book b3 =b2.get();
	    	System.out.println(b3.getBookTitle()+" "+b3.getBookAuthor()+" "+b3.getBookCategory());
	    }
	    else
	    	System.out.println("book with id TCP does not exist");
	    	
	    List<Book> books= bookRepository.findAll();
 
	    for(Book b:books)
	    {
	    	System.out.println(b.getBookId()+"     "+b.getBookTitle()+"     "+b.getBookCategory()+"     "+b.getBookAuthor()+"     "+b.getAvailableCopies());
	        //System.out.println(b);
	    }*/
	    //System.out.println(books);
	   // bookRepository.deleteById("cod");
}
}
