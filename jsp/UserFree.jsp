<%@ page import="java.util.List" %>
<%@ page import="com.cu.util.userFree" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>indList</title>
    <link href="css/indexList.css" rel="stylesheet">
    <link href="css/designUser.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="designUser" style="margin-top:0;">
	<h1>预约订单</h1>
</div>
<table width="80%" border="1" cellpadding="0.5" cellspacing="0" class="table table-striped">

    <tr>
        <td>公司名称</td>
        <td>公司背景</td>
        <td>公司电话</td>
        <td>操作</td>
    </tr>
    <%
    String username=request.getParameter("username");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
            "root",
            "123456");

    String sql = "select * from userFree where username='"+username+"'";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    List<userFree> indexlist = new ArrayList<userFree>();
    while(rs.next()){
    	userFree ind = new userFree();
    	ind.setUsername(rs.getString(1));
    	ind.setCompanyname(rs.getString(2));
    	ind.setBuildTel(rs.getString(3));
    	ind.setCompanyimage(rs.getString(4));
    	indexlist.add(ind);
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

    	request.setAttribute("list",indexlist);
        List<userFree> list = (List<userFree>)request.getAttribute("list");
        for(userFree ind : list){
    %>
            <tr>
               <%--  <td><%=ind.getUsername()%></td> --%>
                <td><%=ind.getCompanyname()%></td>
                <td><img src="<%=ind.getCompanyimage()%>" class="listImage"></td>
                <td><%=ind.getBuildTel()%></td>
                <td><a href="DelFree.jsp?companyimage=<%=ind.getCompanyimage()%>" class="btn btn-success">取消订单</a></td>
            </tr>
    <%    }
    %>
    		
</table>
<nav aria-label="Page navigation">
			  <ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
</nav>


</body>
</html>