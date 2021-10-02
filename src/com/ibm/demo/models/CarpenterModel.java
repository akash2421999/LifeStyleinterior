package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.Statement;

import com.common.db.DBConnection;

public class CarpenterModel {
	public int insertRecords(String meet,String beds,String chairs,String tables,String cabinetry,String dining,String seating,String sofas) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into complain values ('" + meet + "','" + beds + "','" + chairs + "','" + tables + "','" + cabinetry + "','" + dining + "','" + seating + "','" + sofas + "')";
			x = smt.executeUpdate(query);
		
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
