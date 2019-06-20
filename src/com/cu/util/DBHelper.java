package com.cu.util;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
   
	private static final String driver = "com.mysql.jdbc.Driver"; //jdbc����
	
	private static final String url="jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8"; 
	private static final String username="root";//��¼��
	private static final String password="123456";//����
    
	private static Connection conn=null;
	
		static 
	{
		try
		{
			Class.forName(driver);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	
	public static Connection getConnection() throws Exception
	{
		if(conn==null)
		{
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}
		return conn;
	}
	
	public static void main(String[] args) {
		
		try
		{
		   Connection conn = DBHelper.getConnection();
		   if(conn!=null)
		   {
			   System.out.println("��¼�ɹ�");
		   }
		   else
		   {
			   System.out.println("��¼ʧ��");
		   }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
}
