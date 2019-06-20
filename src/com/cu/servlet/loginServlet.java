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
import javax.servlet.http.HttpSession;

import com.cu.dao.customerDao;
import com.cu.util.customer;





/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("GB2312");
		
		HttpSession session = request.getSession(true);
	    
	    //获取前端页面传递的参数
	    String login_name = request.getParameter("username").trim();   //该参数由stuList页面的<a href="updateStu.jsp?sid=stu.getStudentId()">传递过来
	   //创建StudentDao对象
	    customerDao cusDao = new customerDao();
	    customer cus = cusDao.getCusByCusname(login_name);

	    if(cus != null){
	        request.setAttribute("cus",cus);
	    }
		session.setAttribute("login_name", login_name);
		
		
//		String username=request.getParameter("username").trim();
		String password=request.getParameter("password").trim();			
		
		String condition="select * from customer where username='"+login_name+
				"'and password='"+password+"'";
		try {
			conn=DriverManager.getConnection(url,sqlusername,sqlpassword);
			sql=conn.createStatement();
			ResultSet rs=sql.executeQuery(condition); 
			if(rs.next()){
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else{
				String backNews="您输入的帐号不存在，或密码不匹配";
				fail(request, response, login_name, backNews);
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("login.jsp");
		}
		
		
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void fail(HttpServletRequest request,HttpServletResponse response,String username,String backNews){
		response.setContentType("text/html;charset=GB2312");
		try {
			PrintWriter out=response.getWriter();
			out.println("<html><body>");
			out.println("<h2>"+username+"登录反馈结果<br>"+backNews+"</h2>");
			out.println("返回登录页面<br>");
			out.println("<a href=login.jsp>登录页面</a>");
			out.println("</body></html>");
		} catch (IOException e) {
		}
	}
}
