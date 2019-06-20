package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cu.util.DBHelper;
import com.cu.util.userFree;;

public class userFreeDao {
	public int saveUserFree(userFree userFrees){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // 数据库连接	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into userFree(username,companyname,buildTel,companyimage) values(?,?,?,?)";
	// 获取PreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// 对SQL语句中的第1个参数赋值
	ps.setString(1, userFrees.getUsername());
	// 对SQL语句中的第2个参数赋值
	ps.setString(2, userFrees.getCompanyname());
	// 对SQL语句中的第3个参数赋值
	ps.setString(3, userFrees.getBuildTel());
	ps.setString(4, userFrees.getCompanyimage());
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
	
	 public int delUserFree(String companyimage){
	        String sql = "delete from userFree where companyimage = ?"; 
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1,companyimage);
	            return ps.executeUpdate();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
			return 0;
	    }
}
