package com.itp.service;

public interface iLoginService {
	
	public boolean adminLogin(String email, String password);
	
	public boolean supplierLogin(String email, String password);
	
	public boolean customerLogin(String email, String password);
	
	public String adminName(String email);
}
