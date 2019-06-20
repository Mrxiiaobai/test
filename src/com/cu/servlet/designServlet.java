package com.cu.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cu.dao.designDao;
import com.cu.util.design;

public class designServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	/**
	 * Constructor of the object.
	 */
	public designServlet() {
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
		       // 设置response的编码
				//response.setCharacterEncoding("utf-8");
				// 获取PrintWriter
				PrintWriter out = response.getWriter();
				// 设置request的编码
				//request.setCharacterEncoding("utf-8");
		
				String username = request.getParameter("username");
				// 获取用户名
				String userTel = request.getParameter("userTel");
				// 获取密码
				String average = request.getParameter("average");
				// 获取姓名
				String addressPro = request.getParameter("addressPro");
				String addressDis = request.getParameter("addressDis");
				// 获取城市
				String level = request.getParameter("level");
				// 实例化customer
				design designs = new design(username,userTel,average,addressPro,addressDis,level);	
				// 实例化StudentDao
				designDao dao = new designDao();
				
				int row = dao.saveDesign(designs);
				if(row > 0){
					// 更新成输出信息
					System.out.print("注册成功！");
					
					
				}else{
					System.out.print("注册失败！");
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
