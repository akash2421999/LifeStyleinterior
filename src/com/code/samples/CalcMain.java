package com.code.samples;

public class CalcMain {

	public static void main(String[] args) {
		OverloadingCalcDemo obj = new OverloadingCalcDemo();
		float sum = obj.add(10.8f, 10.5f);
		System.out.println("Addition 2 nos " + sum);

		double sum3 = obj.add(10.5, 30.2, 30.8);
		System.out.println("Addition 3 nos " + sum3);

		float sub = obj.sub(10.8f, 10.5f);
		System.out.println("Substraction 2 nos " + sub);

		float mul = obj.mul(10.8f, 10.5f);
		System.out.println("Multiplication 2 nos " + mul);

		float div = obj.div(10.8f, 10.5f);
		System.out.println("Division 2 nos " + div);

	}

}
