<%@page import="java.sql.*" %>
<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<style>
	body{
		background-color:#f8f8ff;;
		
	}
	.Data h2{
		text-align:center;
	}
	.Data p{
		margin-left:200px;
	}
</style>

<script type="text/javascript" src="js/echarts.min.js"></script>
</head>
<body>
	<% String username=request.getParameter("username");
	try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
	            "root",
	            "123456");

	    String sql = "select * from customer where username='"+username+"'";
	   
	    
	    
	    
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    
	    while(rs.next()){
	%>
	<div class="Data">
		<h2>个人账号信息</h2>
		<p>公司名:<span><%=rs.getString(3)%></span></p>
		<p>地址:<span><%=rs.getString(4)%>省<%=rs.getString(5)%></span></p>
		<p>电话:<span><%=rs.getString(7)%></span></p>
	</div>
	<% 
	    	}
		ps.close();
		conn.close();
		}catch(Exception e){
		e.printStackTrace();
		}%>
</body>
</html>