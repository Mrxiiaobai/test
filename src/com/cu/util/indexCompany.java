package com.cu.util;

public class indexCompany {
	private String companyName;
	private String logo;
	private String companyImage;
	private String companyTel;
	private String planNumber;
	private String decorationNumber;

	public indexCompany() {

	}
	
	public indexCompany(String companyName, String logo, String companyImage, String companyTel, String planNumber,
			String decorationNumber) {
		super();
		this.companyName = companyName;
		this.logo = logo;
		this.companyImage = companyImage;
		this.companyTel = companyTel;
		this.planNumber = planNumber;
		this.decorationNumber = decorationNumber;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getCompanyImage() {
		return companyImage;
	}

	public void setCompanyImage(String companyImage) {
		this.companyImage = companyImage;
	}

	public String getCompanyTel() {
		return companyTel;
	}

	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}

	public String getPlanNumber() {
		return planNumber;
	}

	public void setPlanNumber(String planNumber) {
		this.planNumber = planNumber;
	}

	public String getDecorationNumber() {
		return decorationNumber;
	}

	public void setDecorationNumber(String decorationNumber) {
		this.decorationNumber = decorationNumber;
	}
	
}
