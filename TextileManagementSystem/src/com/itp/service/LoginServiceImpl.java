package com.itp.service;

import java.sql.*;
import com.itp.util.DBConnectionUtil;

public class LoginServiceImpl implements iLoginService {
	
	public boolean adminLogin(String email, String password) {
		
		Connection con = DBConnectionUtil.getConnection();
		
		boolean status=false;
		
		try {
			String query="SELECT password FROM textilemanagementsystem.admin WHERE email=? AND password=?";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
			con.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		
		return status;
	}
	
	public boolean supplierLogin(String email, String password) {
		
		Connection con = DBConnectionUtil.getConnection();
		
		boolean status=false;
		
		try {
			String query="SELECT password FROM textilemanagementsystem.supplier WHERE email=? AND password=?";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
			con.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		
		return status;
	}
	
	public boolean customerLogin(String email, String password) {
		
		Connection con = DBConnectionUtil.getConnection();
		
		boolean status=false;
		
		try {
			String query="SELECT password FROM textilemanagementsystem.customer WHERE email=? AND password=?";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
			con.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		
		return status;
	}
	
	public String adminName(String email) {
		
		Connection con = DBConnectionUtil.getConnection();
		
		String name = null;
		
		try {
			String query="SELECT fullName FROM textilemanagementsystem.admin WHERE email=?";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			
			ResultSet rs=ps.executeQuery();
			name = rs.getString(1);
			System.out.println("name = " + name);
			
			con.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		System.out.println("name = " + name);
		return name;
	}
}
