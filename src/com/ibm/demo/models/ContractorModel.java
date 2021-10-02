package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.common.db.DBConnection;

public class ContractorModel {
	public ArrayList<String> getRecords() {
		Connection con = DBConnection.getDBConnection();
		ArrayList<String> list = new ArrayList<String>();
		try {
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT * FROM other_register where catagory='contractor'");
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
