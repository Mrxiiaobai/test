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
		       // ����response�ı���
				//response.setCharacterEncoding("utf-8");
				// ��ȡPrintWriter
				PrintWriter out = response.getWriter();
				// ����request�ı���
				//request.setCharacterEncoding("utf-8");
		
				String username = request.getParameter("username");
				// ��ȡ�û���
				String userTel = request.getParameter("userTel");
				// ��ȡ����
				String average = request.getParameter("average");
				// ��ȡ����
				String addressPro = request.getParameter("addressPro");
				String addressDis = request.getParameter("addressDis");
				// ��ȡ����
				String level = request.getParameter("level");
				// ʵ����customer
				design designs = new design(username,userTel,average,addressPro,addressDis,level);	
				// ʵ����StudentDao
				designDao dao = new designDao();
				
				int row = dao.saveDesign(designs);
				if(row > 0){
					// ���³������Ϣ
					System.out.print("ע��ɹ���");
					
					
				}else{
					System.out.print("ע��ʧ�ܣ�");
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
