package com.testIoc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestHello {
	public static void main(String[] args) {
		//hello he=new helloIpl();
		//he.say();
		ApplicationContext context =new ClassPathXmlApplicationContext("spring/spring-ApplicationContext-Ioc.xml");
		 hello he=(hello)context.getBean("say");
		 he.say();
	}
}
