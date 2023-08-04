package com.bp.springcoredemo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bp.spcd.beans.Country;
import com.bp.spcd.beans.Person;
import com.bp.spcd.beans.Wish;
import com.bp.spcd.config.AppConfig;

import java.util.Map.Entry;

public class App 
{
    public static void main( String[] args )
    {
       // ClassPathXmlApplicationContext container = new ClassPathXmlApplicationContext("beans.xml");
    //  Wish w = container.getBean("wish1",Wish.class);
        /* Wish w1= container.getBean("wish1",Wish.class);
        System.out.println(w1.getmessage());
        
        Wish w2= container.getBean("wish1",Wish.class);
       w2.setmessage("spring welcomes you");
        
        
        System.out.println(w1.getmessage());
        System.out.println(w2.getmessage());*/
      
      //Person p= container.getBean("per1",Person.class);
      //System.out.println(p.getSsn()+"  "+p.getName()+"  "+p.getAge());
      //System.out.println(p.getAddress().getHno()+"  "+p.getAddress().getStreetname()+"  "+p.getAddress().getCity()+"   "+p.getAddress().getState());
      
      //Person p1= container.getBean(Person.class);
      //System.out.println(p1.getSsn()+"  "+p1.getName()+"  "+p1.getAge());
    //  System.out.println(p1.getAddress().getHno()+"  "+p1.getAddress().getStreetname()+"  "+p1.getAddress().getCity()+"   "+p1.getAddress().getState());
      
        
        
        
        
        /*Country c= container.getBean("ctry",Country.class);
        System.out.println("Country name :-"+c.getCountryname());
        System.out.println("currency name :-"+c.getCurrencyname());
        System.out.println("states :");
        for(String s:c.getStates())
        {
           System.out.println(s);
        }*/
        
      /*  Country c= container.getBean("ctry",Country.class);
        System.out.println("Country name :-"+c.getCountryname());
        System.out.println("currency name :-"+c.getCurrencyname());
        System.out.println("states :");
        for(Entry<String,String> e : c.getStates().entrySet())
        {
           System.out.println(e.getKey()+"      "+e.getValue());
        }*/
        
        
        AnnotationConfigApplicationContext container = new AnnotationConfigApplicationContext(AppConfig.class);
      
        Person p1= container.getBean(Person.class);
        System.out.println(p1.getSsn()+"  "+p1.getName()+"  "+p1.getAge());
        System.out.println(p1.getAddress().getHno()+"  "+p1.getAddress().getStreetname()+"  "+p1.getAddress().getCity()+"   "+p1.getAddress().getState());
        
          
      
      
        
        
        container.close();
    }
}
