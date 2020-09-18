/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */

package com.itp.service;

import java.sql.*;

import com.itp.util.DBConnectionUtil;
import com.itp.model.*;

public class ContactServiceImpl implements iContactService {
	
	public int addContact(Contact c1) {
			
		Connection con = DBConnectionUtil.getConnection();
		int status = 0;
			
			try {
				String query1 = "INSERT INTO textilemanagementsystem.contact"
						+ "(name,email,subject,message)"
						+ "VALUES(?,?,?,?)";
				
				PreparedStatement ps = con.prepareStatement(query1);
				ps.setString(1, c1.getName());
				ps.setString(2, c1.getEmail());
				ps.setString(3, c1.getSubject());
				ps.setString(4, c1.getMessage());
				
				status = ps.executeUpdate();
				
				con.close();
				
			}catch(Exception ex2) {System.out.println(ex2);}
			
			
			return status;
		
	}

}
