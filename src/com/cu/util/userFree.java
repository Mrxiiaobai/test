package com.cu.util;

public class userFree {

	private String username;
	private String companyname;
	private String buildTel;
	private String companyimage;

	public userFree(){
		
	}

	public userFree(String username, String companyname, String buildTel, String companyimage) {
		super();
		this.username = username;
		this.companyname = companyname;
		this.buildTel = buildTel;
		this.companyimage = companyimage;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getBuildTel() {
		return buildTel;
	}

	public void setBuildTel(String buildTel) {
		this.buildTel = buildTel;
	}

	public String getCompanyimage() {
		return companyimage;
	}

	public void setCompanyimage(String companyimage) {
		this.companyimage = companyimage;
	}
	
}
