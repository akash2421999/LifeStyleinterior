package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class ComplainModel {
	public int insertRecords(String name,String category,String person,String message) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into complain values ('" + name + "','" + category + "','" + person + "','" + message + "')";
			x = smt.executeUpdate(query);
		
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
