/**
 * 
 */
package com.common.sql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.common.db.DBConnection;

/**
 * @author rkaruti
 *
 */
public class QueryHelper {

	// Insert records into table
	int insertRecords(String id, String name, String pass, String email, String ph, String gender) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "insert into users values ('" + id + "','" + name + "','" + pass + "', '" + email + "','"
					+ ph + "','" + gender + "')";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}

	// Get records form table
	ArrayList getRecords() {
		Connection con = DBConnection.getDBConnection();
		ArrayList list = new ArrayList();
		try {
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery("SELECT * FROM USERS");
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

	// Update table records
	int updateRecords(String id, String name, String pass, String email, String ph, String gender) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "update users set pass = '" + pass + "', phone = '" + ph + "' " + "where id='" + id + "'";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}

	// Delete records
	int deleteRecords(String id) {
		int x = 0;
		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String query = "delete from users where id = '" + id + "'";
			x = smt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		QueryHelper dbQueryHelper = new QueryHelper();

		// Insert records into table
		int insertStatus = dbQueryHelper.insertRecords("1005", "Suraj", "tiger", "suraj@gmail.com", "9322332323",
				"male");
		System.out.println("Record inserted " + insertStatus);

		// Get Table records
		ArrayList list = dbQueryHelper.getRecords();
		System.out.println("Table Records " + list);

		// Update table records
		int updateStatus = dbQueryHelper.updateRecords("104", "Suraj", "tiger", "suraj@yahoo.com", "9100000000",
				"male");
		System.out.println("Record Updated " + updateStatus);

		// Delete table records
		int deleteStatus = dbQueryHelper.deleteRecords("1005");
		System.out.println("Record Deleted " + deleteStatus);

	}

}
