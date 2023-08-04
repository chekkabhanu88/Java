package com.bp.spcd.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.bp.spcd.beans.Address;
import com.bp.spcd.beans.Person;

@Configuration
@ComponentScan(basePackages ="com.bp.spcd.beans")
public class AppConfig 
{

	/*@Bean
	//@scope("prototype")
	public Address address()
	{
		return new Address("7-8-6","subash chandra bose street","guntur","AP");
	}
	
	@Bean(initMethod="initPerson" ,destroyMethod="destPerson")
	public Person person()
	{
		Person p = new Person();
		p.setSsn(101);
		p.setName("ajay");
		p.setAge(23);
		return p;
	}*/
	
}
