package com.cu.util;

public class companydata {
	private String time;
	private String price;
	private String area;
	private String introduction;
	private String address;
	private String companyname;

	
	public companydata(){
		
	}


	public companydata(String time, String price, String area, String introduction, String address,
			String companyname) {
		super();
		this.time = time;
		this.price = price;
		this.area = area;
		this.introduction = introduction;
		this.address = address;
		this.companyname = companyname;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getIntroduction() {
		return introduction;
	}


	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCompanyname() {
		return companyname;
	}


	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	
}

