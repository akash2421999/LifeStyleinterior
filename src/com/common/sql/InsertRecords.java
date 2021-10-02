package com.common.sql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.common.db.DBConnection;

public class InsertRecords {
	public int insertRecords(String id, String name, String select) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into package values ('" + id + "','" + name + "','" + select + "')";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}

	public static void main(String[] args) {
		InsertRecords obj = new InsertRecords();
		int x = obj.insertRecords("1005", "Suraj", "tiger");
		System.out.println("Records " + x);
	}
}
