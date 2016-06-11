package com.caveofprogramming.spring.udemy.tutorial;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;

public class App {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/caveofprogramming/spring/udemy/tutorial/beans/beans.xml");
		
		OffersDAO offersDao = (OffersDAO)context.getBean("offersDao");
		
		try {
			

			Offer offer3 = new Offer( 90, "Albert", "albert@caveofprogramming.com", "Agile guru");
			if(offersDao.update(offer3)) {
				System.out.println("Object updated.");
			}
			else {
				System.out.println("Cannot update object.");
			}
			
			List<Offer> offers2 = new ArrayList<Offer>();
			offers2.add( new Offer("Dave", "dave@caveofprogramming.com", "Cash for Software"));
			offers2.add( new Offer("Karen", "karen@caveofprogramming.com", "Elegent Web Design"));
			int [] rvals = offersDao.create(offers2);
			
			 offersDao.delete(80);
			
			for (int value : rvals ) {
				System.out.println("Updated " + value + " rows.");
			}
			
			List<Offer> offers = offersDao.getOffers();
			
			for ( Offer offer : offers ) {
				System.out.println( offer );
			}
			
			Offer offer = offersDao.getOffer(1);
			System.out.println( "Should be Mike: " + offer );
			
		} catch ( CannotGetJdbcConnectionException e ) {
			System.out.println( "Cannot get database connection..." );
		} catch ( DataAccessException e ) {  	// Generic Handler
			System.out.println( e.getMessage());
			System.out.println( e.getClass());
		}
		
		
		
		((ClassPathXmlApplicationContext)context).close();
	}

}