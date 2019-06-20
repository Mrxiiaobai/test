<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
 <head>
  <title>窝窝居注册</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">
  <link rel="stylesheet" type="text/css" href="css/regeister.css">  
 </head>

 <body>
    <div class="header">
        <div class="headleft"><img src="images/logo2.jpg" style="width:402px;height:74px;position: absolute;right: 0;bottom: 0;"></div>
        <div class="headright"><span style="font-size: 25px;color: #ccc;line-height: 100px;margin-right:10px;margin-left: 300px;">注册</span>如需帮助请拨打:<span style="color: red;font-size: 20px;">400-8768-622</span></div>
    </div>
    <div class="main">
        <div class="ml">
            <form action="customerServlet" method="post" class="mll" >
                <h2 style="font-size: 25px;color: black;">装修公司注册</h2>
                <p>
                    <input type="text" name="username" placeholder="用户名" id='username'>&nbsp;&nbsp; <span id='userSpan'>3-20位字母、数字或下划线组合，首字符必须为字母</span>
                </p>
                <p>
                    <input type="password" name="password" placeholder="密码" id='password'>&nbsp;&nbsp; <span id='passSpan'>建议密码由六位以上数字、字母和特殊字符组成</span>
                </p>
                <p>
                    <input type="password" name="password" placeholder="确认密码" id='passagagin'>&nbsp;&nbsp; <span id='againSpan'>请再次输入密码</span>
                </p>
                <p>
                    <input type="text" name="companyname" placeholder="公司名称" id='companyname'>&nbsp;&nbsp; <span id='companySpan'>请输入正确的公司名称</span>
                </p>
                <p class='cityP'>
                   <select name="cityPro" id='selectPro' style='width:145px;height:25px;margin-top:20px;'>
                        <option value="安徽">安徽省</option>
                        <option value="河南" selected="selected">河南省</option>
                        <option value="江苏">江苏省</option>
                    </select>
                    <select name="cityDis" class='selectCity'>
                         <option value="郑州市">郑州市</option>
                         <option value="驻马店" >驻马店</option>
                         <option value="洛阳市" selected="selected">洛阳市</option>
                    </select>
                    <select name="cityDis" class='selectCity hideCity'>
                          <option value="合肥市">合肥市</option>
                            <option value="安庆市" >安庆市</option>
                            <option value="黄山市" selected="selected">黄山市</option>
                    </select>
                    <select name="cityDis" class='selectCity hideCity'>
                         <option value="南京市">南京市</option>
                         <option value="苏州" >苏州</option>
                         <option value="杭州市" selected="selected">杭州市</option>
                    </select>
                    &nbsp;&nbsp;<span id='citySpan'>请选择所在城市</span>
                </p>
                <p>
                    <input type="text" name="customername" placeholder="联系人" id='customername'>&nbsp;&nbsp;<span id='customerSpan'>请输入姓名</span>
                </p>
                <p>
                    <input type="text" name="tel" placeholder="手机号码" id='tel'>&nbsp;&nbsp;<span id='telSpan'>请输入手机号码</span>
                </p>
                <p class='p'>
                    <input type="text" name="yzm" placeholder="验证码" id='yzm' style="width: 150px;height: 40px;margin-right: 5px;">
                    <span id='randomNumber'>1234</span>
                    <input type="button" value="获取验证码" id='getYzm' style="width: 140px;height: 40px;background: #ffb000;color: #fff;border: none;cursor:pointer;">&nbsp;&nbsp;<span id='yzmSpan'>请输入验证码</span>
                </p>
                <p>
                    <input type="submit" value="提交申请" id='submit' onclick='return checkip()' style="width: 315px;height:35px;background:#ea5224;color: #fff;border: none;cursor:pointer;">
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
        <p style="text-align: center;line-height: 10px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/regeister.js"></script>
 </body>
</html>
