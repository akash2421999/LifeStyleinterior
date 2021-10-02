package com.code.samples;

public class OverloadingCalcDemo {

	float add(float x, float y) {
		System.out.println("Float ");
		return x + y;
	}

	double add(double x, double y) {
		System.out.println("Double ");
		return x + y;
	}

	double add(double x, double y, double z) {
		return x + y + z;
	}

	float sub(float x, float y) {
		return x - y;
	}

	float mul(float x, float y) {
		return x * y;
	}

	float div(float x, float y) {
		return x / y;
	}

}
