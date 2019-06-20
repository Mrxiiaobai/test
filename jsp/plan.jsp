<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>免费设计</title>

    <link rel="stylesheet" type="text/css" href="css/csschushihua.css">
    <link rel="stylesheet" type="text/css" href="css/plan.css">  
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
                    <li><a href="plan.jsp?username=<%=(String)session.getAttribute("login_name")%>"  target="_self" style="background: orange;width: 130px;
                height: 50px;border-radius: 15px;">免费设计</a></li>
                    <li><a href="design.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self">免费报价</a></li>
                    <li><a href="impression.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self">效果图</a></li>
                    <li><a href="index.jsp?username=<%=(String)session.getAttribute("login_name")%>" target="_self">首页</a></li>
                </ul>
            </div>
         </div>
         <div class="bgbody">
            <div class="bg li">
                <span class="close">×</span>
                <form action="javascript;;"  class="bglf"  target="nm_iframe" > 
                    <h1><span class="line"></span>申请免费设计<span class="line"></span></h1>
                    <h5>今日已有<span class="orange" >2306</span>人申请免费量房、设计、报价服务</h5>
                    <p>
                        房屋户型：<select name="" style="width: 222px;height: 30px;padding-left: 10px;" id='houseStyle'>
                                    <option value="one">一室一厅</option>
                                    <option value="two">一室两厅</option>
                                    <option value="three" selected="selected">两室一厅</option>
                                    <option value="four">两室两厅</option>
                                    <option value="five">三室一厅</option>
                                    <option value="six">三室两厅</option>
                                    <option value="seven">四室一厅</option>
                                    <option value="eight">四室两厅</option>
                                </select>
                                <input type="text" id="other" style="display:none;width: 106px;height:26px;padding-left: 10px;">
                    </p>
                    <p>
                        设计预算：<select name="" id='ys' style="width: 222px;height: 30px;padding-left: 10px;">
                                    <option value="mone" selected="selected">3000元以下</option>
                                    <option value="mtwo">3000-6000元</option>
                                    <option value="mthree">6000-10000元</option>
                                    <option value="mfour">10000-50000元</option>
                                    <option value="mfive">50000-100000元</option>
                                    <option value="msix">100000以上</option>
                                </select>
                    </p>
                    <p>
                        您的电话：<input type="text" name="dianhua" class="bginput" id='tel'>
                    </p>
                   		 	<p class='cityP'>
                        	所在城市：<select name="" id='selectPro' style="width: 127px;height: 30px;padding-left: 10px;">
                            			<option value="安徽">安徽</option>
                            			<option value="河南" selected="selected">河南</option>
                            			<option value="江苏">江苏</option>
                     				</select>
                    				
				                    <select name="" class='selectCity' >
				                         <option value="郑州市">郑州市</option>
				                         <option value="驻马店" >驻马店</option>
				                         <option value="洛阳市" selected="selected">洛阳市</option>
				                    </select>
				                    <select name="" class='selectCity hideCity'>
				                         <option value="合肥市">合肥市</option>
				                         <option value="安庆市" >安庆市</option>
				                         <option value="黄山市" selected="selected">黄山市</option>
				                    </select>
				                    <select name="" class='selectCity hideCity'>
				                         <option value="南京市">南京市</option>
				                         <option value="苏州" >苏州</option>
				                         <option value="杭州市" selected="selected">杭州市</option>
				                    </select>
                    		</p>
                    <p>
                        装修档次：<input type="radio" name="dangci" value="高档" checked="checked" class="radio">高档
                        <input type="radio" name="dangci" value="中档" class="radio">中档
                        <input type="radio" name="dangci" value="低档" class="radio">低档
                    </p>
                    <p>
                        <input type="submit" id="caculate" name="tijiao" value="立即申请" class="bginput bgsub">
                    </p>
                </form>
                <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
            </div>
            <div class="wrapper-hiddenle li">
                <span class="close">×</span>
                <h1><span class="line"></span>设计图<span class="line"></span></h1>
                <a href="javascript;;" class="hiddenleImg"><img src="images/bo5.jpg" class="randomImage"></a>
                <a href="javascript;;" class="hiddenleImg"><img src="images/bo6.jpg" class="randomImage"></a>
                <a href="javascript;;" class="hiddenleImg"><img src="images/bo7.jpg" class="randomImage"></a>
                <a href="javascript;;" class="hiddenleImg"><img src="images/bo8.jpg" class="randomImage"></a>
                <h1><span class="line"></span>更多详情<span class="line"></span></h1>
                <p>请拨打电话：18438620365</p>
                
            </div>
            <div class="wrapper-hiddenri li">
                <span class="close">×</span>
                <h1><span class="line"></span>设计报价<span class="line"></span></h1>
                <h5 style="margin-left: 10px;">尊敬的客户，您好，您的设计装修报价大概为:<span id="random">27728</span>&nbsp;万元,具体设计详<br>情可与设计师交谈，如有意向，可联系我司电话号码，留下具体地址，三日内会有设计师上门实地测量、设计</h5>
                <h1><span class="line"></span>相关作品推荐<span class="line"></span></h1>
                <a href="javascript;;" class="hiddenleImg"><img src="" class="randomImage"></a>
                <a href="javascript;;" class="hiddenleImg"><img src="" class="randomImage"></a>
                <a href="javascript;;" class="hiddenleImg"><img src="" class="randomImage"></a>
                <a href="javascript;;" class="hiddenleImg"><img src="" class="randomImage"></a>
                <span style="font-size: 15px;float: right;margin-bottom: -20px;color: orange;"><a href="javascript;;">更多>></a></span>
            </div>
            <div class="arrow" id="arrow">
                <a href="javascript:;" class="prev" id="arrLeft"></a>
                <a href="javascript:;" class="next" id="arrRight"></a>
            </div>
        </div>
        <div class="wrapper">
            <div class="wrapper-header">
                <h2>
                    <span class="line"></span>
                    <a href="">精选设计公司</a>
                    <span class="line"></span>
                </h2>
                <span style="font-size: 18px;display:block;padding: 6px 0;">甄选优质设计公司，丰富选择理想家庭</span>
            </div>
            <div class="wrapper-body">
                <div class="fl">
                    <a href="buildCompany.jsp?companyname=令仪装饰" class="company">
                        <div class="companydiv">
                            <div class="companyimg">
                                <img src="https://back.tobosu.com/new_impress_pic/2018-10-04/5bb56c5816120.jpg">
                            </div>
                            <div class="companylogo">
                                <img src="https://back.tobosu.com/company_logo/2018-07-12/thumb_5b4717c3848a2.jpg">
                            </div>
                        </div>
                        <div class="companybottom">
                            <p>令仪装饰</p>
                            <p>
                                <span class="star">★★★★★</span>
                            </p>
                            <ul>
                                <li>设计案例：<span class="orange">137</span></li>
                                <li>累计咨询用户：<span class="orange">21570</span></li>
                            </ul>
                            <span class="phone">找TA免费设计</span>
                        </div>
                    </a>
                    <a href="buildCompany.jsp?companyname=同誉空间设计" class="company">
                        <div class="companydiv">
                            <div class="companyimg">
                                <img src="https://back.tobosu.com/impress_pic/2015-12-16/p_5670e74a8c679.jpg">
                            </div>
                            <div class="companylogo">
                                <img src="https://back.tobosu.com/company_logo/2015-12-16/thumb_56714ed969d65.jpg">
                            </div>
                        </div>
                        <div class="companybottom">
                            <p>同誉空间设计</p>
                            <p>
                                <span class="star">★★★★</span>
                            </p>
                            <ul>
                                <li>设计案例：<span class="orange">10</span></li>
                                <li>累计咨询用户：<span class="orange">19722</span></li>
                            </ul>
                            <span class="phone">找TA免费设计</span>
                        </div>
                    </a>
                    <a href="buildCompany.jsp?companyname=卉置空间" class="company">
                        <div class="companydiv">
                            <div class="companyimg">
                                <img src="https://back.tobosu.com/new_impress_pic/2017-12-06/5a27a0f5ee189.jpg">
                            </div>
                            <div class="companylogo">
                                <img src="https://back.tobosu.com/app/2018-08-14/5b72a518c9390.jpg">
                            </div>
                        </div>
                        <div class="companybottom">
                            <p>卉置空间</p>
                            <p>
                                <span class="star">★★★★</span>
                            </p>
                            <ul>
                                <li>设计案例：<span class="orange">0</span></li>
                                <li>累计咨询用户：<span class="orange">19057</span></li>
                            </ul>
                            <span class="phone">找TA免费设计</span>
                        </div>
                    </a>
                    <a href="buildCompany.jsp?companyname=贤坤装饰" class="company">
                        <div class="companydiv">
                            <div class="companyimg">
                                <img src="https://back.tobosu.com/new_impress_pic/2018-09-19/5ba20764d8cce.jpg">
                            </div>
                            <div class="companylogo">
                                <img src="https://back.tobosu.com/company_logo/2018-09-04/thumb_5b8deeeede294.jpg">
                            </div>
                        </div>
                        <div class="companybottom">
                            <p>贤坤装饰</p>
                            <p>
                                <span class="star">★★★★</span>
                            </p>
                            <ul>
                                <li>设计案例：<span class="orange">5</span></li>
                                <li>累计咨询用户：<span class="orange">604</span></li>
                            </ul>
                            <span class="phone">找TA免费设计</span>
                        </div>
                    </a>  
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
        <p style="text-align: center;line-height: 10px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p>
        <div id='hideDiv'></div>
		<div id='showDiv'>
			<h1></h1>
			<div><span id='closeDiv'>确定</span></div>	
		</div> 
    </div>
<script src="js/My$.js"></script>
<script src="js/plan.js"></script>
<script src="js/common.js"></script>
</body>
</html>