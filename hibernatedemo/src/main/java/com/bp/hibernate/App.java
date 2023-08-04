package com.bp.hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.bp.hibernate.dao.EmployeeDAO;
import com.bp.hibernate.entity.Address;
import com.bp.hibernate.entity.Employee;
import com.bp.hibernate.entity.Person;
import com.bp.hibernate.util.Hibernateutil;

public class App 
{
    public static void main( String[] args )
    {
    	SessionFactory factory = Hibernateutil.buildSessionFactory();
    Session session = factory.openSession();
    Person p=session.get(Person.class, 787);
    if(p!=null)
    {
    	System.out.println(p.getSsn()+" "+p.getPersonName()+" "+p.getPersonAge()+" "+p.getGender());
        System.out.println(p.getAddress().getAddressId()+" "+p.getAddress().getHouseno()+" "+p.getAddress().getCityName()+" "+p.getAddress().getStateName()+" "+p.getAddress().getStreetName());
    }
    Address a= session.get(Address.class,7001);
    if(a!=null)
    	System.out.println(a.getAddressId()+" "+a.getCityName()+" "+a.getHouseno()+" "+a.getStateName()+" "+a.getStreetName()+" "+a.getStateName());
    	System.out.println(a.getPerson().getSsn()+" "+a.getPerson().getPersonName()+" "+a.getPerson().getGender()+" "+a.getPerson().getPersonAge());
    session.close();
    Hibernateutil.shutdown();
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	/*EmployeeDAO edao=new EmployeeDAO(factory);
    	edao.insertEmployee(new Employee(105,"Dinesh Karthik",2000,20));
    	Employee e= edao.getEmployee(105);
    	if(e!=null)
    		System.out.println(e.getEmployeeName()+" "+e.getSalary()+" "+e.getDepartmentno());
    	//edao.modifyEmployee(new Employee(103,"ram charan",3300,33));
    	//edao.deleteEmployee(new Employee(101,"",0,0));
    	 Hibernateutil.shutdown();*/
    	/*SessionFactory factory = Hibernateutil.buildSessionFactory();
       Session session = factory.openSession();
       Transaction trans =session.beginTransaction();
       Employee e = session.get(Employee.class,102);
       if(e!=null)
    	  session.delete(e);
       else
    	   System.out.println("Employee with id 102 does not exist");
      // Employee e= new Employee(102,"babu raja",25378,10);
       //session.saveOrUpdate(e);
       trans.commit();
       session.close();
       Hibernateutil.shutdown();*/
      /* Employee e= session.get(Employee.class,102);
       if(e!=null)
    	   e.setEmployeeName("Babu raja1");
       System.out.println("is session dirty"+session.isDirty());
       trans.commit();
       System.out.println("is session dirty"+session.isDirty());
       session.close();
       Hibernateutil.shutdown();*/ //updates one column in a record
       
       /*  Employee e= new Employee(101,"AjaySaxena",1000,10);
       Employee e1 = new Employee(102,"babu raju",2000,20);
       Employee e2 = new Employee(103,"john",5000,30);
       Transaction trans =session.beginTransaction();
       session.save(e);
       session.save(e1);
       session.save(e2);
       trans.commit();
       Employee e3= session.get(Employee.class, 102);
       if(e3!=null)
       {
    	   System.out.println(e3.getEmployeeName()+"  "+e3.getSalary()+" "+e3.getDepartmentno());
    	   
       }
       else {
    	   System.out.println("employee withj id 102 is not there");
       }
       session.close();
       Hibernateutil.shutdown();*/ // fetching data from a table
    }
}
