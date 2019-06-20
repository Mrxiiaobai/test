package com.cu.util;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
   
	private static final String driver = "com.mysql.jdbc.Driver"; //jdbcÇý¶¯
	
	private static final String url="jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8"; 
	private static final String username="root";//µÇÂ¼Ãû
	private static final String password="123456";//ÃÜÂë
    
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
			   System.out.println("µÇÂ¼³É¹¦");
		   }
		   else
		   {
			   System.out.println("µÇÂ¼Ê§°Ü");
		   }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
}
