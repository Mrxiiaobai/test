package com.cu.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cu.dao.indexCompanyDao;
import com.cu.util.indexCompany;

public class updateIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	/**
	 * Constructor of the object.
	 */
	public updateIndexServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession(true);
		String companyName = (String) session.getAttribute("companyName");
		
		System.out.println(companyName);

		// 获取姓名
		String companyTel = request.getParameter("companyTel");
		// 获取城市
		String planNumber = request.getParameter("planNumber");
		// 获取城市
		String decorationNumber = request.getParameter("decorationNumber");
		// 获取姓名
		try{
			
			 //   ݿ     	
			String url="jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8"; 
			
			Connection conn = DriverManager.getConnection(url,"root","123456");
			java.sql.Statement sql=conn.createStatement();
			
			ResultSet rs = sql.executeQuery("select * from indexCompany where companyName='"+companyName+"'");

			if(rs.next()){
				int mm = sql.executeUpdate("update indexcompany set  companyTel='"+companyTel+"' , planNumber= '"+planNumber+"' ,  decorationNumber='"+decorationNumber+"' where companyName='"+companyName+"'");		
			   	if(mm!=0){
			   		System.out.print("修改成功");
			   		request.getRequestDispatcher("indexList.jsp").forward(request,response);
			   	}else{
			   		System.out.print("修改失败");
			   		response.sendRedirect("indexList.jsp");
			   		}
			}
			conn.close();
			
		}catch (Exception e) {
		   	e.printStackTrace();
		}
	}
	   	
	    
	   
	



	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
