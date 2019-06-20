package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cu.util.design;
import com.cu.util.DBHelper;

public class designDao {
	/**
	 * 添加客户信息
	 * 
	 */
	public int saveDesign(design designs){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // 数据库连接	
	 Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into price(username,userTel,average,addressPro,addressDis,level) values(?,?,?,?,?,?)";
	// 获取PreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	
	

	// 对SQL语句中的第1个参数赋值
	ps.setString(1, designs.getUsername());
	// 对SQL语句中的第2个参数赋值
	ps.setString(2, designs.getUserTel());
	// 对SQL语句中的第3个参数赋值
	ps.setString(3, designs.getAverage());
	// 对SQL语句中的第4个参数赋值
	ps.setString(4, designs.getAddressPro());
	// 对SQL语句中的第5个参数赋值
	ps.setString(5, designs.getAddressDis());
	ps.setString(6, designs.getLevel());

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
}
