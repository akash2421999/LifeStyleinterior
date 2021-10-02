package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;
public class SelectPackageModel {

	public int insertRecords(String name, String select, String holdername, String cnum, String cc_exp_mo, String cc_exp_yr, String cvv, String amount) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into package values ('" + name + "','" + select + "','" + holdername + "','" + cnum + "','" + cc_exp_mo + "','" + select + "','" + select + "','" + select + "')";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
