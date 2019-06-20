<%@ page import="com.cu.dao.customerDao" %>
<%@ page import="com.cu.util.customer" %>
<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
 <head>
  <title>窝窝居登录</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">
  <link rel="stylesheet" type="text/css" href="css/login.css">  
 </head>
 <body>
 
    <div class="header">
        <div class="headleft"><img src="images/logo2.jpg" style="width:402px;height:74px;position: absolute;right: 0;bottom: 0;"></div>
        <div class="headright"><span style="font-size: 25px;color: #ccc;line-height: 100px;margin-right:10px;margin-left: 300px;">登录</span>如需帮助请拨打:<span style="color: red;font-size: 20px;">400-8768-622</span></div>
    </div>
 <div class="login">
    <div class="dl">
        <form  action="loginServlet" method="post" >
            <div class="bt">
                <h2 style="font-size: 25px;color: black;padding-top: 10px;padding-left: 10px;">会员登录<a href="regeister.jsp" style="font-size: 15px;float: right;padding-top: 10px;padding-right: 35px;">没账号？立即注册</a></h2>
            </div>
            <p>
                <input type="text" name="username" placeholder="请输入您的用户名" style="padding-left: 35px;width: 300px;height: 35px;border-radius: 5px;">
            </p>
            <p>
                <input type="password" name="password" placeholder="请输入登录密码" style="padding-left: 35px;width: 300px;height: 35px;border-radius: 5px;">
            </p>
            <p>
                <input type="checkbox" name="yhm" >记住用户名
                <a href="javascript;;" style="float: right;padding-right: 35px;">忘记密码</a>
            </p>
            <p>
                <input type="submit" name="denglu" value="登录" style="width: 325px;height:40px;background: yellow;border-radius: 5px;">
            </p>
        </form>
    </div>
 </div>
    <div class="bottom">
        <ul>
            <li><a href="javascript;;">装修效果图</a></li>
            <li><a href="javascript;;">装修百科</a></li>
            <li><a href="javascript;;">加入我们</a></li>
            <li><a href="javascript;;">关于我们</a></li>
            <li><a href="javascript;;">联系我们</a></li>
            <li><a href="javascript;;">用户注册协议</a></li>
        </ul>
    </div><br/>
    <p style="text-align: center;line-height: 30px;margin-bottom: 30px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p>
 </body>
</html>
