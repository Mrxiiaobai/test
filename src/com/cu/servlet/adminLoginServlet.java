package com.cu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class loginServlet
 */
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String url="jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8";
	private static final String sqlusername="root";//登录名
	private static final String sqlpassword="123456";//密码
	Connection conn;
	Statement sql;
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (Exception e) {
			 e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String adminusername=request.getParameter("adminUsername").trim();
		String adminpassword=request.getParameter("adminPassword").trim();	
		
		String adminCondition="select * from admin where username='"+adminusername+
				"'and password='"+adminpassword+"'";
		try {
			conn=DriverManager.getConnection(url,sqlusername,sqlpassword);
			sql=conn.createStatement();

			ResultSet adminRs=sql.executeQuery(adminCondition); 
			if(adminRs.next()){
				request.getRequestDispatcher("adminIndex.jsp").forward(request, response);
			}
			
			else{
				String backNews="您输入的帐号不存在，或密码不匹配";
				fail(request, response, adminusername, backNews);
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("admin.jsp");
		}
		
	}
	public void fail(HttpServletRequest request,HttpServletResponse response,String username,String backNews){
		response.setContentType("text/html;charset=GB2312");
		try {
			PrintWriter out=response.getWriter();
			out.println("<html><body>");
			out.println("<h2>"+username+"登录反馈结果<br>"+backNews+"</h2>");
			out.println("返回登录页面<br>");
			out.println("<a href=admin.jsp>登录页面</a>");
			out.println("</body></html>");
		} catch (IOException e) {
		}
	}
}
