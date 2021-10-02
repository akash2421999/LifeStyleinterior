package com.common.sql;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class DeleteRecord {
	public int deleteRecords(String id) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "delete from userdetail where id = '"+id+"'";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
	public static void main(String[] args) {
		DeleteRecord obj = new DeleteRecord();
		int x = obj.deleteRecords("1005");
		System.out.println("Records " + x);
	}
}
