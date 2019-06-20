package com.cu.util;

public class customer {
	private String username;
	private String password;
	private String companyname;
	private String cityPro;
	private String cityDis;
	private String customername;
	private String tel;
	
	public customer(){
		
	}

	public customer(String username, String password, String companyname, String cityPro, String cityDis,
			String customername, String tel) {
		super();
		this.username = username;
		this.password = password;
		this.companyname = companyname;
		this.cityPro = cityPro;
		this.cityDis = cityDis;
		this.customername = customername;
		this.tel = tel;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getCityPro() {
		return cityPro;
	}

	public void setCityPro(String cityPro) {
		this.cityPro = cityPro;
	}

	public String getCityDis() {
		return cityDis;
	}

	public void setCityDis(String cityDis) {
		this.cityDis = cityDis;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
}

