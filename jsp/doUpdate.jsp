
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.cu.dao.customerDao" %>
<%@ page import="com.cu.util.customer" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
	        "root",
	        "123456");
	
	String username = request.getParameter("username");
	// 获取用户名
	String password = request.getParameter("password");
	// 获取密码
	String companyname = request.getParameter("companyname");
	// 获取姓名
	String cityPro = request.getParameter("cityPro");
	// 获取城市
	String cityDis = request.getParameter("cityDis");
	// 获取城市
	String customername = request.getParameter("customername");
	// 获取姓名
	String tel = request.getParameter("tel");
	customer customers = new customer(username,password,companyname,cityPro,cityDis,customername,tel);	
	// 实例化customerDao
	customerDao dao = new customerDao();
	
	int row = dao.updateCus(customers);
    
    if(row > 0){
        request.getRequestDispatcher("adminList.jsp").forward(request,response);
    }
%>