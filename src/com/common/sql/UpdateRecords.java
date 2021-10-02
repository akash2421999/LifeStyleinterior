package com.common.sql;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class UpdateRecords {
	public int updateRecords(String id, String name, String pass, String email, String ph, String gender) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "update userdetail set pass = '"+pass+"', phone = '"+ph+"' "
					+ "where id='"+id+"'";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
	public static void main(String[] args) {
		UpdateRecords obj = new UpdateRecords();
		int x = obj.updateRecords("104", "Suraj", "tiger", "suraj@yahoo.com", "9100000000", "male");
		System.out.println("Records " + x);
	}
}
