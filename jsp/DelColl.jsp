<%@ page import="com.cu.dao.collectionDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	
	    String user = request.getParameter("user");
	    collectionDao indDao = new collectionDao();
	    indDao.delColl(user);
	    request.getRequestDispatcher("collection.jsp").forward(request,response);
%>