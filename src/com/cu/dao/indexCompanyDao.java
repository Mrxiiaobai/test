package com.cu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cu.util.indexCompany;
import com.cu.util.DBHelper;

public class indexCompanyDao {
	/**
	 * 添加客户信息
	 * 
	 */
	public int saveIndex(indexCompany indexCompanys){
//		System.out.println(customers+"****");
	
		int row =0;
	try{
		 // 数据库连接	
	Connection conn = DBHelper.getConnection();
	
	String sql = "insert into indexcompany(companyName,logo,companyImage,companyTel,planNumber,decorationNumber) values(?,?,?,?,?,?)";
	// 获取PreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// 对SQL语句中的第1个参数赋值
	ps.setString(1, indexCompanys.getCompanyName());
	// 对SQL语句中的第2个参数赋值
	ps.setString(2, indexCompanys.getLogo());
	// 对SQL语句中的第3个参数赋值
	ps.setString(3, indexCompanys.getCompanyImage());
	// 对SQL语句中的第4个参数赋值
	ps.setString(4, indexCompanys.getCompanyTel());
	// 对SQL语句中的第5个参数赋值
	ps.setString(5, indexCompanys.getPlanNumber());
	// 对SQL语句中的第6个参数赋值
	ps.setString(6, indexCompanys.getDecorationNumber());
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
	
	

	    public int updateIndex(indexCompany ind){
	    	int row=0;
	        /*
	        * 更新学员信息
	        * */
	       
	        try{
	   		 // 数据库连接	
	   	Connection conn = DBHelper.getConnection();
	    String sql = "update indexcompany set logo=?,companyImage=?,companyTel=?,planNumber=?,decorationNumber=? where companyName=?";
	   	// 获取PreparedStatement
	   	PreparedStatement ps = conn.prepareStatement(sql);
	   	ps.setString(6, ind.getCompanyName());
	   	// 对SQL语句中的第2个参数赋值
	   	ps.setString(1, ind.getLogo());
	   	// 对SQL语句中的第3个参数赋值
	   	ps.setString(2, ind.getCompanyImage());
	   	// 对SQL语句中的第4个参数赋值
	   	ps.setString(3, ind.getCompanyTel());
	   	// 对SQL语句中的第5个参数赋值
	   	ps.setString(4, ind.getPlanNumber());
	   	// 对SQL语句中的第6个参数赋值
	   	ps.setString(5, ind.getDecorationNumber());
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
