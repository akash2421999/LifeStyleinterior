package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class PaintModel {
	public int insertRecords(String name,String brand,String painting,String price,String date,String address) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into painter values ('" + name + "','" + brand + "','" + painting + "', '" + price + "','" + date + "','" + address + "')";
			x = smt.executeUpdate(query);
		
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
