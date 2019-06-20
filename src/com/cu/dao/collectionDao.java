package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cu.util.DBHelper;
import com.cu.util.collection;;;

public class collectionDao {
	public int saveCollection(collection collections){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // 数据库连接	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into collection(username,companyimage) values(?,?)";
	// 获取PreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// 对SQL语句中的第1个参数赋值
	ps.setString(1, collections.getUsername());
	// 对SQL语句中的第2个参数赋值

	// 对SQL语句中的第3个参数赋值
	ps.setString(2, collections.getCompanyimage());
	// 对SQL语句中的第4个参数赋值


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
	
	 public int delColl(String username){
	        String sql = "delete from collection where username = ?"; 
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
