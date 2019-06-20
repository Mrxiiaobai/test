<%@ page import="java.util.List" %>
<%@ page import="com.cu.util.collection" %>
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
	<h1>收藏图片</h1>
</div>
<table width="80%" border="1" cellpadding="0.5" cellspacing="0" class="table table-striped">

    <tr>
        <td>用户名</td>
        <td>收藏图片</td>
        <td>操作</td>
    </tr>
    <%
    String username=request.getParameter("username");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
            "root",
            "123456");

    String sql = "select * from collection where username='"+username+"'";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    List<collection> indexlist = new ArrayList<collection>();
    while(rs.next()){
    	collection ind = new collection();
    	ind.setUsername(rs.getString(1));
    	ind.setCompanyimage(rs.getString(2));
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
        List<collection> list = (List<collection>)request.getAttribute("list");
        for(collection ind : list){
    %>
            <tr>
               <%--  <td><%=ind.getUsername()%></td> --%>
                <td><%=ind.getUsername()%></td>
                <td><img src="<%=ind.getCompanyimage()%>" class="listImage"></td>
                <td><a href="DelColl.jsp?user=<%=ind.getUsername()%>" class="btn btn-success">取消收藏</a></td>
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