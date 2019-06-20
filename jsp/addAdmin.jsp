<%@ page import="com.cu.dao.customerDao" %>
<%@ page import="com.cu.util.customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>添加用户信息</title>
     <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
     <link href="css/regeister.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<style>
		span{color:#ccc;}
	</style>
</head>
<body>
<h1 style="text-align:center;">添加用户表</h1>
<form action="addAdminServlet" method="post">
    <table align="center" border="1px solid black" class="table table-striped" style="width:80%;">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username" placeholder="用户名" id='username'>&nbsp;&nbsp; <span id='userSpan'>3-20位字母、数字或下划线组合，首字符必须为字母</span></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password" placeholder="密码" id='password'>&nbsp;&nbsp; <span id='passSpan'>建议密码由六位以上数字、字母和特殊字符组成</span></td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td><input type="password" name="password" placeholder="确认密码" id='passagagin'>&nbsp;&nbsp; <span id='againSpan'>请再次输入密码</span></td>
        </tr>
        <tr>
            <td>公司名</td>
            <td><input type="text" name="companyname" placeholder="公司名称" id='companyname'>&nbsp;&nbsp; <span id='companySpan'>请输入正确的公司名称</span></td>
        </tr>
        <tr>
            <td>地址</td>
            <td class='cityP'>
                <select name="cityPro" id='selectPro' style='width:145px;height:25px;'>
                        <option value="安徽">安徽省</option>
                        <option value="河南" selected="selected">河南省</option>
                        <option value="江苏">江苏省</option>
                    </select>
                    <select name="cityDis" class='selectCity' style="margin-top:8px">
                         <option value="郑州市">郑州市</option>
                         <option value="驻马店" >驻马店</option>
                         <option value="洛阳市" selected="selected">洛阳市</option>
                    </select>
                    <select name="cityDis" class='selectCity hideCity' style="margin-top:8px">
                          <option value="合肥市">合肥市</option>
                            <option value="安庆市" >安庆市</option>
                            <option value="黄山市" selected="selected">黄山市</option>
                    </select>
                    <select name="cityDis" class='selectCity hideCity' style="margin-top:8px">
                         <option value="南京市">南京市</option>
                         <option value="苏州" >苏州</option>
                         <option value="杭州市" selected="selected">杭州市</option>
                    </select>
                    &nbsp;&nbsp;<span id='citySpan' style="top:10px">请选择所在城市</span>
            </td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="customername" placeholder="联系人" id='customername'>&nbsp;&nbsp;<span id='customerSpan'>请输入姓名</span></td>
        </tr>
        <tr>
            <td>电话</td>
            <td><input type="text" name="tel" placeholder="手机号码" id='tel'>&nbsp;&nbsp;<span id='telSpan'>请输入手机号码</span></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="保存" class="btn btn-primary">
                <a href="adminList.jsp" class="btn btn-success">取消</a>
            </td>
        </tr>
    </table>
</form>
 <script src="js/jquery.min.js"></script>
 <script src="js/regeister.js"></script>
 <script>
/*  var table = document.getElementsByClassName('table');


 var tcd = table[0].children;
 var tecd = tcd[0].children;
	for(var i=0;i<tecd.length;i++){
		tecd[i].children[2].width=100+"px";
	} */
 
 </script>
</body>
</html>