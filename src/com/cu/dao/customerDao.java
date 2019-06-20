package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cu.util.customer;
import com.cu.util.DBHelper;

public class customerDao {
	/**
	 * ��ӿͻ���Ϣ
	 * 
	 */
	public int saveCustomer(customer customers){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // ���ݿ�����	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into customer(username,password,companyname,cityPro,cityDis,customername,tel) values(?,?,?,?,?,?,?)";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// ��SQL����еĵ�1��������ֵ
	ps.setString(1, customers.getUsername());
	// ��SQL����еĵ�2��������ֵ
	ps.setString(2, customers.getPassword());
	// ��SQL����еĵ�3��������ֵ
	ps.setString(3, customers.getCompanyname());
	// ��SQL����еĵ�4��������ֵ
	ps.setString(4, customers.getCityPro());
	// ��SQL����еĵ�5��������ֵ
	ps.setString(5, customers.getCityDis());
	// ��SQL����еĵ�6��������ֵ
	ps.setString(6, customers.getCustomername());
	// ��SQL����еĵ�7��������ֵ
	ps.setString(7, customers.getTel());
	// ִ�и��²�����������Ӱ�������
	row = ps.executeUpdate();
	// �ر�PreparedStatement
				ps.close();
			}
	catch (Exception e) {
				e.printStackTrace();
			}
	
	return row;
	
			
	}
	
	
	    public int updateCus(customer cus){
	    	int row=0;
	        /*
	        * ����ѧԱ��Ϣ
	        * */
	       
	        try{
	   		 // ���ݿ�����	
	   	Connection conn = DBHelper.getConnection();
	   	 
	    String sql = "update customer set password=?,companyname=?,cityPro=?,cityDis=?,customername=?,tel=? where username=?";
	   	// ��ȡPreparedStatement
	   	PreparedStatement ps = conn.prepareStatement(sql);
	   	// ��SQL����еĵ�1��������ֵ
	   	ps.setString(7, cus.getUsername());
	   	// ��SQL����еĵ�2��������ֵ
	   	ps.setString(1, cus.getPassword());
	   	// ��SQL����еĵ�3��������ֵ
	   	ps.setString(2, cus.getCompanyname());
	   	// ��SQL����еĵ�4��������ֵ
	   	ps.setString(3, cus.getCityPro());
	   	// ��SQL����еĵ�5��������ֵ
	   	ps.setString(4, cus.getCityDis());
	   	// ��SQL����еĵ�6��������ֵ
	   	ps.setString(5, cus.getCustomername());
	   	// ��SQL����еĵ�7��������ֵ
	   	ps.setString(6, cus.getTel());
	   	// ִ�и��²�����������Ӱ�������
	   	row = ps.executeUpdate();
	   	// �ر�PreparedStatement
	   				ps.close();
	   			}
	   	catch (Exception e) {
	   				e.printStackTrace();
	   			}
	   	
	   	return row;
	   	
	   			
	   	}
	    
	    public customer getCusByCusname(String username){
	        String sql = "select * from customer where username=?";
	        customer cus = null;
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1,username);
	            ResultSet rs = ps.executeQuery();

	            if(rs.next()){
	                cus = new customer();
	                cus.setUsername(rs.getString("username"));
	                cus.setPassword(rs.getString("password"));
	                cus.setCompanyname(rs.getString("companyname"));
	                cus.setCityPro(rs.getString("cityPro"));
	                cus.setCityDis(rs.getString("cityDis"));
	                cus.setCustomername(rs.getString("customername"));
	                cus.setTel(rs.getString("Tel"));
	                
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return cus;
	    }
	    
	    
	    public int delCus(String username){
	        String sql = "delete from customer where username = ?"; 
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1,username);
	            return ps.executeUpdate();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
			return 0;
	    }
}
