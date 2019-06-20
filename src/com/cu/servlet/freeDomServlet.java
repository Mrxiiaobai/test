package com.cu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cu.dao.userFreeDao;
import com.cu.util.userFree;;

/**
 * Servlet implementation class freeDomServlet
 */
public class freeDomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public freeDomServlet() {
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
		String username = request.getParameter("username");
		String companyTel = request.getParameter("companyTel");
		String companyname = request.getParameter("companyname");
		String companyimage = request.getParameter("companyimage");
		userFree userFrees = new userFree(username,companyname,companyTel,companyimage);	
		// ÊµÀý»¯customerDao
		userFreeDao dao = new userFreeDao();
		int row = dao.saveUserFree(userFrees);
	    
	    if(row > 0){
	    	System.out.print("×¢²á³É¹¦£¡");
	    	request.getRequestDispatcher("buildCompany.jsp").forward(request, response);
	    }else{
					System.out.print("×¢²áÊ§°Ü£¡");
				}
				out.flush();
				out.close();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}	
}
