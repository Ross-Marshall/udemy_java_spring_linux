package com.caveofprogramming.spring.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class App {
	
	public static void main( String[] args ) {
		
		ApplicationContext context = new FileSystemXmlApplicationContext( "beans.xml" );
		
		// Person person = new Person(); -POJO way to do it. 
		Person person = (Person)context.getBean("person");  // Sprint way to do it.
		person.speak();
	}

}
