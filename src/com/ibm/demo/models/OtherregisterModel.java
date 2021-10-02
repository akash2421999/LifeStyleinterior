package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class OtherregisterModel {
	public int insertRecords(String name, String email, String phone, String addr, String city, String exp,
			String adhar, String pass, String category) {
		System.out.print(name);
		System.out.print(email);
		System.out.print(phone);
		System.out.print(addr);
		System.out.print(city);
		System.out.print(exp);
		System.out.print(adhar);
		System.out.print(pass);
		System.out.print(category);
		
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into other_register values ('" + pass + "','" + name + "','" + email + "', '"
					+ category + "','" + city + "','" + phone + "','" + adhar + "','" + exp + "','" + addr + "','pending')";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
