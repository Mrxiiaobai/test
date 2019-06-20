<%@ page import="com.cu.dao.indexCompanyDao" %>
<%@ page import="com.cu.util.indexCompany" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    //获取前端页面传递的参数
    String user = request.getParameter("user");   //该参数由stuList页面的<a href="updateStu.jsp?sid=stu.getStudentId()">传递过来
   //创建StudentDao对象
    indexCompanyDao indDao = new indexCompanyDao();
    indexCompany ind = indDao.getIndByIndName(user);

    if(ind != null){
        request.setAttribute("ind",ind);
    }
	session.setAttribute("companyName", user);
%>

<html>
<head>
    <title>修改用户公司信息</title>
     <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<form action="updateIndexServlet" method="post">
    <table align="center" border="1px solid black" class="table table-striped">
    
        <tr>
            <td>公司名</td>
            <td><p class="form-control-static" name="companyName" ><%=ind.getCompanyName()%></p></td>
        </tr>
       
        <tr>
            <td>公司电话</td>
            <td>
                <input type="text" name="companyTel" value="<%=ind.getCompanyTel()%>" >
                
            </td>
        </tr>
         <tr>
            <td>设计案例</td>
           	<td><input type="text" name="planNumber" value="<%=ind.getPlanNumber()%>" ></td>
        </tr>
        <tr>
            <td>装修案例</td>
            <td><input type="text" name="decorationNumber"  value="<%=ind.getDecorationNumber()%>"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="保存" class="btn btn-primary">
                <a href="indexList.jsp" class="btn btn-success">取消</a>
            </td>
        </tr>
    </table>
</form>
<script>


	
</script>
</body>
</html>