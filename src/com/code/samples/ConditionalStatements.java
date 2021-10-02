package com.code.samples;

public class ConditionalStatements {

	// If else
	float findBigger(float n1, float n2) {
		float big = 0;
		if (n1 > n2) {
			big = n1;
		} else {
			big = n2;
		}
		return big;
	}

	public static void main(String[] args) {
		ConditionalStatements obj = new ConditionalStatements();
		float big = obj.findBigger(40.5f, 20.4f);
		System.out.println("Bigger Num is " + big);
	}

}
