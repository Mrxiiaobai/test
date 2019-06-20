package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cu.util.indexCompany;
import com.cu.util.DBHelper;

public class indexCompanyDao {
	/**
	 * ��ӿͻ���Ϣ
	 * 
	 */
	public int saveIndex(indexCompany indexCompanys){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // ���ݿ�����	
	Connection conn = DBHelper.getConnection();
	
	String sql = "insert into indexcompany(companyName,logo,companyImage,companyTel,planNumber,decorationNumber) values(?,?,?,?,?,?)";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// ��SQL����еĵ�1��������ֵ
	ps.setString(1, indexCompanys.getCompanyName());
	// ��SQL����еĵ�2��������ֵ
	ps.setString(2, indexCompanys.getLogo());
	// ��SQL����еĵ�3��������ֵ
	ps.setString(3, indexCompanys.getCompanyImage());
	// ��SQL����еĵ�4��������ֵ
	ps.setString(4, indexCompanys.getCompanyTel());
	// ��SQL����еĵ�5��������ֵ
	ps.setString(5, indexCompanys.getPlanNumber());
	// ��SQL����еĵ�6��������ֵ
	ps.setString(6, indexCompanys.getDecorationNumber());
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
	
	

	    public int updateIndex(indexCompany ind){
	    	int row=0;
	        /*
	        * ����ѧԱ��Ϣ
	        * */
	       
	        try{
	   		 // ���ݿ�����	
	   	Connection conn = DBHelper.getConnection();
	    String sql = "update indexcompany set logo=?,companyImage=?,companyTel=?,planNumber=?,decorationNumber=? where companyName=?";
	   	// ��ȡPreparedStatement
	   	PreparedStatement ps = conn.prepareStatement(sql);
	   	ps.setString(6, ind.getCompanyName());
	   	// ��SQL����еĵ�2��������ֵ
	   	ps.setString(1, ind.getLogo());
	   	// ��SQL����еĵ�3��������ֵ
	   	ps.setString(2, ind.getCompanyImage());
	   	// ��SQL����еĵ�4��������ֵ
	   	ps.setString(3, ind.getCompanyTel());
	   	// ��SQL����еĵ�5��������ֵ
	   	ps.setString(4, ind.getPlanNumber());
	   	// ��SQL����еĵ�6��������ֵ
	   	ps.setString(5, ind.getDecorationNumber());
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
	    
	    public indexCompany getIndByIndName(String companyName){
	        String sql = "select * from indexcompany where companyName=?";
	        indexCompany ind = null;
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1,companyName);
	            ResultSet rs = ps.executeQuery();

	            if(rs.next()){
	            	ind = new indexCompany();
	            	ind.setCompanyName(rs.getString("companyName"));
	            	ind.setLogo(rs.getString("logo"));
	            	ind.setCompanyImage(rs.getString("companyImage"));
	            	ind.setCompanyTel(rs.getString("companyTel"));
	            	ind.setPlanNumber(rs.getString("planNumber"));
	            	ind.setDecorationNumber(rs.getString("decorationNumber"));
	                
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return ind;
	    }
	    
	    
	    public int delInd(String companyName){
	        String sql = "delete from indexcompany where companyName = ?"; 
	        try {
	        	Connection conn = DBHelper.getConnection();
	        	PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1,companyName);
	            return ps.executeUpdate();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
			return 0;
	    }
}
