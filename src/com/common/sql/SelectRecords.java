package com.common.sql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.common.db.DBConnection;

public class SelectRecords {
	public ArrayList getRecords() {
		Connection con = DBConnection.getDBConnection();
		ArrayList list = new ArrayList();
		try {
			Statement smt = con.createStatement();
		
		

			String user = null;
			ResultSet rs = smt.executeQuery("SELECT * FROM bookcont");
			while (rs.next()) {
			
		
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));


				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void main(String[] args) {

		SelectRecords obj = new SelectRecords();
		ArrayList list = obj.getRecords();
		System.out.println("Records " + list);
	}

}
