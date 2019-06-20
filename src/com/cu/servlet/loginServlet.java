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
	private static final String sqlusername="root";//��¼��
	private static final String sqlpassword="123456";//����
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
	    
	    //��ȡǰ��ҳ�洫�ݵĲ���
	    String login_name = request.getParameter("username").trim();   //�ò�����stuListҳ���<a href="updateStu.jsp?sid=stu.getStudentId()">���ݹ���
	   //����StudentDao����
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
				String backNews="��������ʺŲ����ڣ������벻ƥ��";
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
			out.println("<h2>"+username+"��¼�������<br>"+backNews+"</h2>");
			out.println("���ص�¼ҳ��<br>");
			out.println("<a href=login.jsp>��¼ҳ��</a>");
			out.println("</body></html>");
		} catch (IOException e) {
		}
	}
}
