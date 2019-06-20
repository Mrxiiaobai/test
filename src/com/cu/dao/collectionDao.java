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
		 // ���ݿ�����	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into collection(username,companyimage) values(?,?)";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// ��SQL����еĵ�1��������ֵ
	ps.setString(1, collections.getUsername());
	// ��SQL����еĵ�2��������ֵ

	// ��SQL����еĵ�3��������ֵ
	ps.setString(2, collections.getCompanyimage());
	// ��SQL����еĵ�4��������ֵ


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
