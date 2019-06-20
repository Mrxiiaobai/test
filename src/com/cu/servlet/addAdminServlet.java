package com.cu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cu.dao.customerDao;
import com.cu.util.customer;

/**
 * Servlet implementation class customerServlet
 */
public class addAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
		String username=request.getParameter("username").trim();
		String password=request.getParameter("password").trim();
		String companyname=request.getParameter("companyname").trim();
		String cityPro=request.getParameter("cityPro").trim();	
		String cityDis=request.getParameter("cityDis").trim();
		String customername=request.getParameter("customername").trim();
		String tel=request.getParameter("tel").trim();
		
		customer customers = new customer(username,password,companyname,cityPro,cityDis,customername,tel);	
		// ÊµÀý»¯customerDao
		customerDao dao = new customerDao();
		
		int row = dao.saveCustomer(customers);
	    
	    if(row > 0){
	    	System.out.print("×¢²á³É¹¦£¡");
	        request.getRequestDispatcher("adminList.jsp").forward(request,response);
	    }else{
					System.out.print("×¢²áÊ§°Ü£¡");
				}
				out.flush();
				out.close();
			}
		
		

}
