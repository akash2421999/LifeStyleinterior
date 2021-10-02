package com.ibm.demo.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import com.common.db.DBConnection;

public class UpdateModel {
	public PreparedStatement updateRecords(String id, String user, String pass, String email, String phone) {

		System.out.println(
				 " name " + user + " pass " + pass + " email " + email + " phone " + phone);
		PreparedStatement ps = null;

		Connection con = DBConnection.getDBConnection();
		try {
			Statement smt = con.createStatement();
			String sql="update userdetail set name=? , pass=? , email=? , phone=? where  id=?";
;
 ps = con.prepareStatement(sql);
			
	ps.setString(1,id);

			ps.setString(2, user);
			ps.setString(3, pass);
			ps.setString(4, email);
			ps.setString(5, phone);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ps;
	}
}
