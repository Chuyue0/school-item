package com.ty.test;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {

	private ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	
	@Test
	public void testSpring(){
		SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory"); 
		System.out.println(sessionFactory.openSession());
	}
}
