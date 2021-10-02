package com.ibm.demo.models;


import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class RegisterModel {
	public int insertRecords(String id,String user,String pass,String email,String address, String phone) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into userdetail values ('" + id + "','" + user + "','" + pass + "', '" + email + "','" + address + "','" + phone + "')";
			x = smt.executeUpdate(query);
		
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
