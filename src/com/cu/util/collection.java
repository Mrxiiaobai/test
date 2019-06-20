package com.cu.util;

public class collection {

	private String username;
	private String companyimage;

	public collection(){
		
	}

	public collection(String username,  String companyimage) {
		super();
		this.username = username;

		this.companyimage = companyimage;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	

	public String getCompanyimage() {
		return companyimage;
	}

	public void setCompanyimage(String companyimage) {
		this.companyimage = companyimage;
	}
	
}
