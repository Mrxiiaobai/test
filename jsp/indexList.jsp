<%@ page import="java.util.List" %>
<%@ page import="com.cu.util.indexCompany" %>
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
	<h1>首页数据表</h1>
</div>
<table width="80%" border="1" cellpadding="0.5" cellspacing="0" class="table table-striped">

    <tr>
        <td>公司名称</td>
        <td>公司logo</td>
        <td>公司背景</td>
        <td>公司电话</td>
        <td>设计案例</td>
        <td>装修案例</td>
        <td>操作</td>
    </tr>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
            "root",
            "123456");

    String sql = "select * from indexCompany";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    List<indexCompany> indexlist = new ArrayList<indexCompany>();
    while(rs.next()){
    	indexCompany ind = new indexCompany();
    	ind.setCompanyName(rs.getString(1));
    	ind.setLogo(rs.getString(2));
    	ind.setCompanyImage(rs.getString(3));
    	ind.setCompanyTel(rs.getString(4));
    	ind.setPlanNumber(rs.getString(5));
    	ind.setDecorationNumber(rs.getString(6));
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
        List<indexCompany> list = (List<indexCompany>)request.getAttribute("list");
        for(indexCompany ind : list){
    %>
            <tr>
                <td><%=ind.getCompanyName()%></td>
                <td><img src="<%=ind.getLogo()%>" class="listImage"> | <a href="updateLogo.jsp?user=<%=ind.getCompanyName()%>" class="btn btn-primary">更换</a></td>
                <td><img src="<%=ind.getCompanyImage()%>" class="listImage"> | <a href="updateImage.jsp?user=<%=ind.getCompanyName()%>" class="btn btn-primary">更换</a></td>
                <td><%=ind.getCompanyTel()%></td>
                <td><%=ind.getPlanNumber()%></td>
                <td><%=ind.getDecorationNumber()%></td>
                <td><a href="updateIndex.jsp?user=<%=ind.getCompanyName()%>" class="btn btn-primary">修改</a> | <a href="DelInd.jsp?user=<%=ind.getCompanyName()%>" class="btn btn-success">删除</a></td>
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