package com.cu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cu.dao.collectionDao;
import com.cu.util.collection;

/**
 * Servlet implementation class freeDomServlet
 */
public class collectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public collectionServlet() {
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
		String companyimage = request.getParameter("image");
		collection collections = new collection(username,companyimage);	
		// 实例化customerDao
		collectionDao dao = new collectionDao();
		int row = dao.saveCollection(collections);
	    
	    if(row > 0){
	    	System.out.print("收藏成功！");
	    	request.getRequestDispatcher("impression.jsp").forward(request, response);
	    }else{
					System.out.print("收藏失败！");
				}
				out.flush();
				out.close();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}	
}
