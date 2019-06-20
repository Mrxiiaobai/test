package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cu.util.companydata;
import com.cu.util.DBHelper;

public class companydataDao {
	/**
	 * ��ӿͻ���Ϣ
	 * 
	 */
	public int saveCustomer(companydata companydatas){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // ���ݿ�����	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into companydata(time,price,area,introduction,address,companyname) values(?,?,?,?,?,?)";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// ��SQL����еĵ�1��������ֵ
	ps.setString(1, companydatas.getTime());
	// ��SQL����еĵ�2��������ֵ
	ps.setString(2, companydatas.getPrice());
	// ��SQL����еĵ�3��������ֵ
	ps.setString(3, companydatas.getArea());
	// ��SQL����еĵ�4��������ֵ
	ps.setString(4, companydatas.getIntroduction());
	// ��SQL����еĵ�5��������ֵ
	ps.setString(5, companydatas.getAddress());
	// ��SQL����еĵ�6��������ֵ
	ps.setString(6, companydatas.getCompanyname());
	// ��SQL����еĵ�7��������ֵ
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
	
	
	    public int updateCus(companydata com){
	    	int row=0;
	        /*
	        * ����ѧԱ��Ϣ
	        * */
	       
	        try{
	   		 // ���ݿ�����	
	   	Connection conn = DBHelper.getConnection();

	    String sql = "update companydata set time=?,price=?,area=?,introduction=?,address=? where companyname=?";
	   	// ��ȡPreparedStatement
	   	PreparedStatement ps = conn.prepareStatement(sql);
	   	// ��SQL����еĵ�1��������ֵ
	   	ps.setString(7, com.getCompanyname());
	   	// ��SQL����еĵ�2��������ֵ
	   	ps.setString(1, com.getTime());
	   	// ��SQL����еĵ�3��������ֵ
	   	ps.setString(2, com.getPrice());
	   	// ��SQL����еĵ�4��������ֵ
	   	ps.setString(3, com.getArea());
	   	// ��SQL����еĵ�5��������ֵ
	   	ps.setString(4, com.getIntroduction());
	   	// ��SQL����еĵ�6��������ֵ
	   	ps.setString(5, com.getAddress());
	   	// ��SQL����еĵ�7��������ֵ

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
	    
	    public companydata getCom(String companyname){
	        String sql = "select * from companydata where companyname=?";
	        companydata com = null;
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1,companyname);
	            ResultSet rs = ps.executeQuery();

	            if(rs.next()){
	            	com = new companydata();
	            	com.setTime(rs.getString("time"));
	            	com.setPrice(rs.getString("price"));
	            	com.setArea(rs.getString("area"));
	            	com.setIntroduction(rs.getString("introduction"));
	            	com.setAddress(rs.getString("address"));
	            	com.setCompanyname(rs.getString("companyname"));
	                
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return com;
	    }
	    
	    
	    public int delCus(String companyname){
	        String sql = "delete from companydata where companyname = ?"; 
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1,companyname);
	            return ps.executeUpdate();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
			return 0;
	    }
}
