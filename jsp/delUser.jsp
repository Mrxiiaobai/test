<%@ page import="com.cu.dao.customerDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	
	    String user = request.getParameter("user");
	    customerDao cusDao = new customerDao();
	    cusDao.delCus(user);
	    request.getRequestDispatcher("adminList.jsp").forward(request,response);
%>