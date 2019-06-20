package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cu.util.design;
import com.cu.util.DBHelper;

public class designDao {
	/**
	 * ��ӿͻ���Ϣ
	 * 
	 */
	public int saveDesign(design designs){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // ���ݿ�����	
	 Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into price(username,userTel,average,addressPro,addressDis,level) values(?,?,?,?,?,?)";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	
	

	// ��SQL����еĵ�1��������ֵ
	ps.setString(1, designs.getUsername());
	// ��SQL����еĵ�2��������ֵ
	ps.setString(2, designs.getUserTel());
	// ��SQL����еĵ�3��������ֵ
	ps.setString(3, designs.getAverage());
	// ��SQL����еĵ�4��������ֵ
	ps.setString(4, designs.getAddressPro());
	// ��SQL����еĵ�5��������ֵ
	ps.setString(5, designs.getAddressDis());
	ps.setString(6, designs.getLevel());

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
}
