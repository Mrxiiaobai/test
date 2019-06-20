<%@ page import="com.cu.dao.indexCompanyDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	
	    String user = request.getParameter("user");
	    indexCompanyDao indDao = new indexCompanyDao();
	    indDao.delInd(user);
	    request.getRequestDispatcher("indexList.jsp").forward(request,response);
%>