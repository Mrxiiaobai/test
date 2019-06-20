<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>免费报价</title>
    <link rel="stylesheet" type="text/css" href="css/csschushihua.css">
    <link rel="stylesheet" type="text/css" href="css/design.css">  
    <style type="text/css">    
    </style>
</head>
<body>
<div id="hid" style="display:none;"><%=(String)session.getAttribute("login_name")%></div>
    <div class="content">
     <div class="header">
        <div class="hl">
            <ul>
                <li>蜗居欢迎你！<a href="index.jsp">首页</a></li>
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
                <li>|</li> 
                <li><a href="User.jsp?username=<%=(String)session.getAttribute("login_name")%>"  style="color: red;"><i class="glyphicon glyphicon-user"></i>个人中心</a></li> 
            </ul>
        </div>
    </div>
    <div class="main">
        <img src="images/logo.png">
        <div class="mr">
            <ul>    
                <li><a href="plan.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self">免费设计</a></li>
                <li><a href="design.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self" style="background: orange;width: 130px;
            height: 50px;border-radius: 15px;">免费报价</a></li>
                <li><a href="impression.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self">效果图</a></li>
                <li><a href="index.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self">首页</a></li>
            </ul>
        </div>
     </div>
     <div class="bgbody">
        <div class="heading"></div>
        <div class="bg">
            <form action="designServlet" method="post" class="bglf" target="nm_iframe">
                <h1>申请免费报价</h1>
                <h5>今日已有<span class="orange">1952</span>人申请免费量房、设计、报价服务</h5>
                <p>
                    您的称呼：<input type="text" name="username" class="bginput" id='user'>
                </p>
                <p>
                    您的电话：<input type="text" name="userTel" class="bginput" id='tel'>
                </p>
                <p>
                    建筑面积：<input type="text" name="average" class="bginput" id='average'>
                </p>
                <p class='cityP'>
                    所在城市：<select name="addressPro" id='selectPro' style="width: 143px;height: 30px;">
                        <option value="安徽省">安徽省</option>
                        <option value="河南省" selected="selected">河南省</option>
                        <option value="江苏省">江苏省</option>
                        </select>
                        <select name="addressDis" class='selectCity' >
                            <option value="郑州市">郑州市</option>
                            <option value="驻马店" >驻马店</option>
                            <option value="洛阳市" selected="selected">洛阳市</option>
                        </select>
                         <select name="addressDis" class='selectCity hideCity'>
                            <option value="合肥市">合肥市</option>
                            <option value="安庆市" >安庆市</option>
                            <option value="黄山市" selected="selected">黄山市</option>
                        </select>
                         <select name="addressDis" class='selectCity hideCity'>
                            <option value="南京市">南京市</option>
                            <option value="苏州" >苏州</option>
                            <option value="杭州市" selected="selected">杭州市</option>
                        </select>
                </p> 
                <p>
					装修档次：<input type="radio" name="level" value="高档" checked>高档
                  	<input type="radio" name="level" value="中档">中档
                  	<input type="radio" name="level" value="低档">低档
                </p>
                <i class="btn-bg"></i>
                <em class="budget-bg btn-scale"></em>
                <a href="" class="budget-bg" id='caculate'><span class="budget-span" >立即计算</span></a>
            </form>
            <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
            <div class="bgr">
                <h2>报价:<span id="random-bj">27728</span>&nbsp;万元</h2>
                <div class="xbgr">
                   <p>
		                        人工费：<span id="random-pe">5190</span>元<br/>
		                        材料费：<span id="random-ca">13209</span>元<br/>
		                        设计费：<span id="random-sh">3290</span>元<br/>
		                        质检费：<span id="random-zh">6039</span>元<br/>
                   </p>
                </div>
                <p style="color: #ccc; font-size:15px;text-align: center;margin-top: 15px;">
                    注：根据不同地区以及装修档次制定报价价格
                </p>
                <p style="color:red;font-size: 20px;text-align: center;margin-top: 15px;margin-left: 40px;">*装修管家将回电您，免费提供装修咨询为你服务</p>
            </div>
            
            <div class="bgr" id='hideBgr'>
            	<span id='closeBgr'>X</span>
                <h2>报价:<span id="shadow-bj"></span>&nbsp;万元</h2>
                <div class="xbgr">
                   <p>
		                        人工费：<span id="shadow-pe"></span>元<br/>
		                        材料费：<span id="shadow-ca"></span>元<br/>
		                        设计费：<span id="shadow-sh"></span>元<br/>
		                        质检费：<span id="shadow-zh"></span>元<br/>
                   </p>
                </div>
                <p style="color: #ccc; font-size:15px;text-align: center;margin-top: 15px;">
                    注：根据不同地区以及装修档次制定报价价格
                </p>
                <p style="color:red;font-size: 20px;text-align: center;margin-top: 15px;margin-left: 40px;">*装修管家将回电您，免费提供装修咨询为你服务</p>
            </div>
            <div class="bgb">
               <div class="bgb">
			 		<marquee direction=up behavior=scroll scrolldelay=100 onmouseover=this.stop() onmouseout=this.start()>
			 			<span class='userSpan'>王</span>先生1<span class='numSpan'>52</span>****<span class='telSpan'>6573</span>已获得<span class='numSpan'>3</span>套设计方案<br/>
			 			<span class='userSpan'>陈</span>先生1<span class='numSpan'>47</span>****<span class='telSpan'>2556</span>已获得<span class='numSpan'>2</span>套设计方案
					</marquee>
		 		</div> 		
            </div>
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
    </div>
		<p style="text-align: center;line-height: 10px;margin-bottom: 30px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p> 
	<div id='hideDiv'></div>
	<div id='showDiv'>
		<h1></h1>
		<div><span id='closeDiv'>确定</span></div>	
	</div>
</div>
<script src='js/design.js'></script>
<script src="js/common.js"></script>
<script></script>
</body>
</html>