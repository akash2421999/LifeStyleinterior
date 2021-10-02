package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class DeleteModel {
	public int deleteRecords(String id) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "delete from userdetail where id = '" + id + "'";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
