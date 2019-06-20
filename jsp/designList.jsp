<%@ page import="java.util.List" %>
<%@ page import="com.cu.util.design" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>degList</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/designUser.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="designUser">
	<h1>参与免费报价用户表</h1>
</div>
<table width="80%" border="1" cellpadding="0.5" cellspacing="0" class="table table-striped" style="margin-top">
    <tr>
        <td>姓名</td>
        <td>电话</td>
        <td>面积</td>
        <td>地址</td>
        <td>档次</td>
    </tr>
    <%	
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
	            "root",
	            "123456");
	
	    String sql = "select * from price";
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    List<design> designList = new ArrayList<design>();
	    while(rs.next()){
	    	design cus = new design();
	    	cus.setUsername(rs.getString(1));
	    	cus.setUserTel(rs.getString(2));
	    	cus.setAverage(rs.getString(3));
	    	cus.setAddressPro(rs.getString(4));
	    	cus.setAddressDis(rs.getString(5));
	    	cus.setLevel(rs.getString(6));
	    	designList.add(cus);
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
	
	    request.setAttribute("list",designList);
	        List<design> list = (List<design>)request.getAttribute("list");
	        for(design cus : list){
    %>
            <tr>
                <td><%=cus.getUsername()%></td>
                <td><%=cus.getUserTel()%></td>
                <td><%=cus.getAverage()%></td>
                <td><%=cus.getAddressPro()%>省<%=cus.getAddressDis()%></td>
                <td><%=cus.getLevel()%></td>
            </tr>
    <%    }
    %>
</table>
</body>
</html>