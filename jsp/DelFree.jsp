<%@ page import="com.cu.dao.userFreeDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	
	    String companyimage = request.getParameter("companyimage");
	    userFreeDao indDao = new userFreeDao();
	    indDao.delUserFree(companyimage);
	    request.getRequestDispatcher("UserFree.jsp").forward(request,response);
%>