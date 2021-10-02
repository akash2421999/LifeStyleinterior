package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class RenovationModel {
	public int insertRecords(String id,String name,String address,String city,String state,String date,String category,String price) {
		System.out.println(id);
		System.out.println(name);
		System.out.println(address);
		System.out.println(city);
		System.out.println(state);
		System.out.println(date);
		System.out.println(category);
		System.out.println(price);
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "INSERT INTO renovation VALUES ('"+id+"','"+name+"','"+address+"','"+city+"','"+state+"','"+date+"','"+category+"','"+price+"')";
			x = smt.executeUpdate(query);
		
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
