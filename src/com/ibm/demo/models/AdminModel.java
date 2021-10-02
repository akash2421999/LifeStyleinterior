package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.common.db.DBConnection;

public class AdminModel {
	public ArrayList getRecords(String user, String pass) {
		Connection con = DBConnection.getDBConnection();
		ArrayList list = new ArrayList();
		try {
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT * FROM admin WHERE name = '" + user + "' AND  pass = '" + pass + "'");
			while (rs.next()) {
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
