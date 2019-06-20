package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cu.util.customer;
import com.cu.util.DBHelper;

public class customerDao {
	/**
	 * 添加客户信息
	 * 
	 */
	public int saveCustomer(customer customers){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // 数据库连接	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into customer(username,password,companyname,cityPro,cityDis,customername,tel) values(?,?,?,?,?,?,?)";
	// 获取PreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// 对SQL语句中的第1个参数赋值
	ps.setString(1, customers.getUsername());
	// 对SQL语句中的第2个参数赋值
	ps.setString(2, customers.getPassword());
	// 对SQL语句中的第3个参数赋值
	ps.setString(3, customers.getCompanyname());
	// 对SQL语句中的第4个参数赋值
	ps.setString(4, customers.getCityPro());
	// 对SQL语句中的第5个参数赋值
	ps.setString(5, customers.getCityDis());
	// 对SQL语句中的第6个参数赋值
	ps.setString(6, customers.getCustomername());
	// 对SQL语句中的第7个参数赋值
	ps.setString(7, customers.getTel());
	// 执行更新操作，返回所影响的行数
	row = ps.executeUpdate();
	// 关闭PreparedStatement
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
	        * 更新学员信息
	        * */
	       
	        try{
	   		 // 数据库连接	
	   	Connection conn = DBHelper.getConnection();
	   	 
	    String sql = "update customer set password=?,companyname=?,cityPro=?,cityDis=?,customername=?,tel=? where username=?";
	   	// 获取PreparedStatement
	   	PreparedStatement ps = conn.prepareStatement(sql);
	   	// 对SQL语句中的第1个参数赋值
	   	ps.setString(7, cus.getUsername());
	   	// 对SQL语句中的第2个参数赋值
	   	ps.setString(1, cus.getPassword());
	   	// 对SQL语句中的第3个参数赋值
	   	ps.setString(2, cus.getCompanyname());
	   	// 对SQL语句中的第4个参数赋值
	   	ps.setString(3, cus.getCityPro());
	   	// 对SQL语句中的第5个参数赋值
	   	ps.setString(4, cus.getCityDis());
	   	// 对SQL语句中的第6个参数赋值
	   	ps.setString(5, cus.getCustomername());
	   	// 对SQL语句中的第7个参数赋值
	   	ps.setString(6, cus.getTel());
	   	// 执行更新操作，返回所影响的行数
	   	row = ps.executeUpdate();
	   	// 关闭PreparedStatement
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
