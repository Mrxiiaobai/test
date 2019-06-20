package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cu.util.companydata;
import com.cu.util.DBHelper;

public class companydataDao {
	/**
	 * 添加客户信息
	 * 
	 */
	public int saveCustomer(companydata companydatas){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // 数据库连接	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into companydata(time,price,area,introduction,address,companyname) values(?,?,?,?,?,?)";
	// 获取PreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// 对SQL语句中的第1个参数赋值
	ps.setString(1, companydatas.getTime());
	// 对SQL语句中的第2个参数赋值
	ps.setString(2, companydatas.getPrice());
	// 对SQL语句中的第3个参数赋值
	ps.setString(3, companydatas.getArea());
	// 对SQL语句中的第4个参数赋值
	ps.setString(4, companydatas.getIntroduction());
	// 对SQL语句中的第5个参数赋值
	ps.setString(5, companydatas.getAddress());
	// 对SQL语句中的第6个参数赋值
	ps.setString(6, companydatas.getCompanyname());
	// 对SQL语句中的第7个参数赋值
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
	
	
	    public int updateCus(companydata com){
	    	int row=0;
	        /*
	        * 更新学员信息
	        * */
	       
	        try{
	   		 // 数据库连接	
	   	Connection conn = DBHelper.getConnection();

	    String sql = "update companydata set time=?,price=?,area=?,introduction=?,address=? where companyname=?";
	   	// 获取PreparedStatement
	   	PreparedStatement ps = conn.prepareStatement(sql);
	   	// 对SQL语句中的第1个参数赋值
	   	ps.setString(7, com.getCompanyname());
	   	// 对SQL语句中的第2个参数赋值
	   	ps.setString(1, com.getTime());
	   	// 对SQL语句中的第3个参数赋值
	   	ps.setString(2, com.getPrice());
	   	// 对SQL语句中的第4个参数赋值
	   	ps.setString(3, com.getArea());
	   	// 对SQL语句中的第5个参数赋值
	   	ps.setString(4, com.getIntroduction());
	   	// 对SQL语句中的第6个参数赋值
	   	ps.setString(5, com.getAddress());
	   	// 对SQL语句中的第7个参数赋值

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
