package com.code.samples;

import java.util.ArrayList;
import java.util.TreeSet;

public class CollectionDemoMain {

	public static void main(String[] args) {
		CollectionDemo obj = new CollectionDemo();
		ArrayList al = obj.demoArrayList();

		System.out.println("Array List " + al);
		for (int i = 0; i < al.size(); i++) {
			System.out.println("Name " + al.get(i));
		}

		TreeSet ts = obj.demoTreeSet();

		System.out.println("Tree Set List " + ts);

	}

}
