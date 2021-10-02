package com.common.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	static Connection con;

	public static Connection getDBConnection() {
		try {
			// Load the driver
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded");

			// Make the connection
			con = DriverManager.getConnection("jdbc:mysql://localhost/demo", "root", "");
			System.out.println("Connection Success");

		} catch (Exception e) {
			System.out.println("Exception " + e);
		}
		return con;
	}

	public static void main(String arg[]) {
		Connection con = DBConnection.getDBConnection();
	}
}
