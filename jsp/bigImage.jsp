<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
 <head>
  <title>效果图</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">  
  <link rel="stylesheet" type="text/css" href="css/bigImage.css"> 
 </head>
 <base target="_blank">
 <body>
 <div class="header" id="header">
    <div class="hl">
        <ul>
            <li>蜗居欢迎你！<a href="index.jsp" target="_self">首页</a></li>
            <li><a href="login.jsp" target="_self">[登录]</a></li>
            <li><a href="regeister.jsp" target="_self">[注册]</a></li>
        </ul>
    </div>
    <div class="hr">
        <ul>    
            <li>中国权威服务装修信用平台</li>
            <li style="color: orange;">服务热线：18438620365</li>
            <li>|</li>
            <li><a href="javascript;;">入驻</a></li>
            <li>|</li>
            <li><a href="javascript;;">装修</a></li> 
        </ul>
    </div>
 </div>
 <div class="main" id="main">
    <img src="images/logo.png">
    <div class="mr">
        <ul>    
            <li><a href="plan.jsp" target="_self">免费设计</a></li>
            <li><a href="design.jsp" target="_self">免费报价</a></li>
            <li><a href="impression.jsp" target="_self">效果图</a></li>
            <li><a href="index.jsp" target="_self">首页</a></li>
        </ul>
    </div>
 </div>
 <div class="bigImageDiv">
 	<p id="priceP">本效果图大概装修报价为<span id="price"></span>元</p>
 	<% String image=request.getParameter("image");
 		System.out.println(image);
 	%>
 	<img class="bigImage" src="<%=image%>">
 </div>
 <div class="bottom">
            <ul>
                <li><a href="#">装修效果图</a></li>
                <li><a href="#">装修百科</a></li>
                <li><a href="#">加入我们</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">用户注册协议</a></li>
            </ul>
        </div>
        <p style="text-align: center;line-height: 10px;margin-bottom: 30px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p>
<script>
var price = document.getElementById("price");
var priceP = document.getElementById("priceP");
price.innerText = parseInt(Math.random()*20000+10000);
priceP.style.fontSize = '20px';
priceP.style.textAlign = 'center';
</script> 
</body>
</html>