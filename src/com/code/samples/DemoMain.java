package com.code.samples;

public class DemoMain {

	public static void main(String[] args) {
		System.out.println("Mail Method");
		MethodsDemo obj = new MethodsDemo();
		obj.demo();
		String str = obj.demoString();
		System.out.println("Demo String " + str);
		System.out.println("Sum " + obj.demoSum(10, 20));
		System.out.println("Div " + obj.div(20, 10));
	}

}
