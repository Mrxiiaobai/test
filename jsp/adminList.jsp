<%@page import="java.io.Console"%>
<%@ page import="java.util.List" %>
<%@ page import="com.cu.util.customer" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>cusList</title>
    <link href="css/designUser.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="designUser">
	<h1>注册用户表</h1>
</div>
<h1><a href="addAdmin.jsp" class="btn btn-Info">添加用户</a></h1>
<table width="80%" border="1" cellpadding="0.5" cellspacing="0" class="table table-striped">
    <tr>
        <td>用户名</td>
        <td>密码</td>
        <td>公司名</td>
        <td>地址</td>
        <td>姓名</td>
        <td>电话</td>
        <td>操作</td>
    </tr>
    <%	
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
	            "root",
	            "123456");
	
	    String sql = "select * from customer";
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    List<customer> cusList = new ArrayList<customer>();
	    while(rs.next()){
	    	customer cus = new customer();
	    	cus.setUsername(rs.getString(1));
	    	cus.setPassword(rs.getString(2));
	    	cus.setCompanyname(rs.getString(3));
	    	cus.setCityPro(rs.getString(4));
	    	cus.setCityDis(rs.getString(5));
	    	cus.setCustomername(rs.getString(6));
	    	cus.setTel(rs.getString(7));
	    	cusList.add(cus);
	    }
	
	    if(rs != null){
	        rs.close();
	    }
	    if(ps != null){
	        ps.close();
	    }
	    if(conn != null){
	        conn.close();
	    }
	
	    request.setAttribute("list",cusList);
	    
	        List<customer> list = (List<customer>)request.getAttribute("list");
	        /* for(int i =0;i<list.size();i++){
	        	
	        } */
	        for(customer cus : list){
	        	
	        	
    %>
            <tr>
                <td><%=cus.getUsername()%></td>
                <td><%=cus.getPassword()%></td>
                <td><%=cus.getCompanyname()%></td>
                <td><%=cus.getCityPro()%>省<%=cus.getCityDis()%></td>
                <td><%=cus.getCustomername()%></td>
                <td><%=cus.getTel()%></td>
                <td><a href="updateCus.jsp?user=<%=cus.getUsername()%>" class="btn btn-primary">修改</a> | <a href="delUser.jsp?user=<%=cus.getUsername()%>" class="btn btn-success">删除</a></td>
            </tr>
    <%    }
    %>
</table>
</body>
<script>
	
</script>
</html>