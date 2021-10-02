package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.common.db.DBConnection;

public class OtherLoginModel {
	public ArrayList othergetRecords(String user, String pass) {
		Connection con = DBConnection.getDBConnection();
		String status="accepted";
		ArrayList list = new ArrayList();
		try {
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT * FROM other_register WHERE email = '" + user + "' AND  pass = '" + pass + "' AND  status = '" + status + "'");
			while (rs.next()) {
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
			
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
