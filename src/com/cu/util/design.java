package com.cu.util;

public class design {
	private String username;
	private String userTel;
	private String average;
	private String addressPro;
	private String addressDis;
	private String level;
	
	public design(){
			
	}

	public design(String username, String userTel, String average, String addressPro, String addressDis, String level) {
		super();
		this.username = username;
		this.userTel = userTel;
		this.average = average;
		this.addressPro = addressPro;
		this.addressDis = addressDis;
		this.level = level;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getAverage() {
		return average;
	}

	public void setAverage(String average) {
		this.average = average;
	}

	public String getAddressPro() {
		return addressPro;
	}

	public void setAddressPro(String addressPro) {
		this.addressPro = addressPro;
	}

	public String getAddressDis() {
		return addressDis;
	}

	public void setAddressDis(String addressDis) {
		this.addressDis = addressDis;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	
}
