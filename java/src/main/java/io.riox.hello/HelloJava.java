package io.riox.hello;

import java.util.Date;

/**
 * @author Oliver Moser
 */
public class HelloJava {

	public static void main(String[] args) throws InterruptedException {
		while (true) {
			Thread.sleep(1000);
			System.out.println(new Date());
		}
	}

}
