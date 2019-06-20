package com.cu.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cu.dao.customerDao;
import com.cu.util.customer;

public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	/**
	 * Constructor of the object.
	 */
	public updateUserServlet() {
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
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		// 获取用户名
		String password = request.getParameter("password");
		// 获取密码
		String companyname = request.getParameter("companyname");
		// 获取姓名
		String cityPro = request.getParameter("cityPro");
		// 获取城市
		String cityDis = request.getParameter("cityDis");
		// 获取城市
		String customername = request.getParameter("customername");
		// 获取姓名
		String tel = request.getParameter("tel");
		customer customers = new customer(username,password,companyname,cityPro,cityDis,customername,tel);	
		// 实例化customerDao
		customerDao dao = new customerDao();
		
		int row = dao.updateCus(customers);
	    
	    if(row > 0){
	        request.getRequestDispatcher("UserList.jsp").forward(request,response);
	    }else{
					System.out.print("修改失败！");
				}
				out.flush();
				out.close();
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
