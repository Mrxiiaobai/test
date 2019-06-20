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
		 // ���ݿ�����	
	Connection conn = DBHelper.getConnection();
	 
	String sql = "insert into userFree(username,companyname,buildTel,companyimage) values(?,?,?,?)";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// ��SQL����еĵ�1��������ֵ
	ps.setString(1, userFrees.getUsername());
	// ��SQL����еĵ�2��������ֵ
	ps.setString(2, userFrees.getCompanyname());
	// ��SQL����еĵ�3��������ֵ
	ps.setString(3, userFrees.getBuildTel());
	ps.setString(4, userFrees.getCompanyimage());
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
