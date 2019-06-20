<%@ page import="com.cu.dao.customerDao" %>
<%@ page import="com.cu.util.customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    //获取前端页面传递的参数
    String username = request.getParameter("username");   //该参数由stuList页面的<a href="updateStu.jsp?sid=stu.getStudentId()">传递过来
   //创建StudentDao对象
    customerDao cusDao = new customerDao();
    customer cus = cusDao.getCusByCusname(username);

    if(cus != null){
        request.setAttribute("cus",cus);
    }

%>

<html>
<head>
    <title>修改密码</title>
     <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<form action="updateServlet" method="post">
    <table align="center" border="1px solid black" class="table table-striped">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username" readonly unselectable="on"  value="<%=cus.getUsername()%>"> </td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password" value="<%=cus.getPassword()%>"></td>
        </tr>
        <tr>
            <td>公司名</td>
            <td><input type="text" name="companyname" readonly unselectable="on" value="<%=cus.getCompanyname()%>"></td>
        </tr>
        <tr>
            <td>地址</td>
            <td>
                <input type="text" name="cityPro" readonly unselectable="on" value="<%=cus.getCityPro()%>" >
                <input type="text" name="cityDis" readonly unselectable="on" value="<%=cus.getCityDis()%>" >
            </td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="customername" readonly unselectable="on" value="<%=cus.getCustomername()%>"> </td>
        </tr>
        <tr>
            <td>电话</td>
            <td><input type="text" name="tel" readonly unselectable="on" value="<%=cus.getTel()%>"> </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="保存" class="btn btn-primary">
                <a href="adminList.jsp" class="btn btn-success">取消</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>