/**
 * 
 */
package com.code.samples;

/**
 * @author Ramesh Karuti
 *
 */
public class CalculatorMain {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		CalculatorImpl calc = new CalculatorImpl();
		double sum = calc.add(10.4, 30.4);
		System.out.println("Addtion = " + sum);
		double sub = calc.sub(10.4, 30.4);
		System.out.println("Substraction = " + sub);
		double mul = calc.mul(10.4, 30.4);
		System.out.println("Multipliation = " + mul);
		double div = calc.div(10.4, 30.4);
		System.out.println("Division = " + div);
	}

}
