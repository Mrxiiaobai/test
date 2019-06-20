<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
 <head>
  <title>效果图</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">  
  <link rel="stylesheet" type="text/css" href="css/impression.css">  
 </head>
 <base target="_blank">
 <body>
 <div id="hid" style="display:none;"><%=(String)session.getAttribute("login_name")%></div>
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
            <li>|</li> 
            <li><a href="User.jsp?username=<%=(String)session.getAttribute("login_name")%>"  style="color: red;"><i class="glyphicon glyphicon-user"></i>个人中心</a></li>
        </ul>
    </div>
 </div>
 <div class="main" id="main">
    <img src="images/logo.png">
    <div class="mr">
        <ul>    
            <li><a href="plan.jsp" target="_self">免费设计</a></li>
            <li><a href="design.jsp" target="_self">免费报价</a></li>
            <li><a href="impression.jsp" target="_self" style="background: orange;width: 130px;
        height: 50px;border-radius: 15px;">效果图</a></li>
            <li><a href="index.jsp" target="_self">首页</a></li>
        </ul>
    </div>
 </div>
 <div class="container" id="container">
        <div class="conhead">
            <div class="fl"><a href="#"><img src="images/secret.png"></a></div>
            <div class="fr"><a href="#"><img src="images/bluegreen.jpg"></a></div>
        </div>
        <div class="selecttype">
            <h2></h2>
            <dl class="space" id="space">
                <dt>空间</dt>
                <dd><a href="javascript;;" id="kt">客厅</a></dd>
                <dd><a href="javascript;;" id="ws">卧室</a></dd>
                <dd><a href="javascript;;" id="ct">餐厅</a></dd>
                <dd><a href="javascript;;" id="cf">厨房</a></dd>
                <dd><a href="javascript;;" id="wsj">卫生间</a></dd>
                <dd><a href="javascript;;" id="yt">阳台</a></dd>
                <dd><a href="javascript;;" id="sf">书房</a></dd>
                <dd><a href="javascript;;" id="xg">玄关</a></dd>
                <dd><a href="javascript;;" id="gd">过道</a></dd>
                <dd><a href="javascript;;" id="etf">儿童房</a></dd>
                <dd><a href="javascript;;" id="ymj">衣帽间</a></dd>
            </dl>
            <dl class="space" id="spaceKind">
                <dt>局部</dt>
                <dd><a href="javascript;;" id="bgq">背景墙</a></dd>
                <dd><a href="javascript;;" id="dd">吊顶</a></dd>
                <dd><a href="javascript;;" id="ged">隔断</a></dd>
                <dd><a href="javascript;;" id="cl">窗帘</a></dd>
                <dd><a href="javascript;;" id="pc">飘窗</a></dd>
                <dd><a href="javascript;;" id="ttm">榻榻米</a></dd>
                <dd><a href="javascript;;" id="cg">橱柜</a></dd>
                <dd><a href="javascript;;" id="bgj">博古架</a></dd>
                <dd><a href="javascript;;" id="gl">阁楼</a></dd>
                <dd><a href="javascript;;" id="yxm">隐形门</a></dd>
                <dd><a href="javascript;;" id="bt">吧台</a></dd>
                <dd><a href="javascript;;" id="yg">衣柜</a></dd>
            </dl>
            <dl class="space" id="spaceStyle">
                <dt>风格</dt>
                <dd><a href="javascript;;" id="jy">简约</a></dd>
                <dd><a href="javascript;;" id="xd">现代</a></dd>
                <dd><a href="javascript;;" id="zs">中式</a></dd>
                <dd><a href="javascript;;" id="os">欧式</a></dd>
                <dd><a href="javascript;;" id="ms">美式</a></dd>
                <dd><a href="javascript;;" id="ty">田园</a></dd>
                <dd><a href="javascript;;" id="xgd">新古典</a></dd>
                <dd><a href="javascript;;" id="dzh">地中海</a></dd>
                <dd><a href="javascript;;" id="dny">东南亚</a></dd>
                <dd><a href="javascript;;" id="rs">日式</a></dd>
                <dd><a href="javascript;;" id="bo">北欧</a></dd>
            </dl>
        </div>
        <div class="recommed">
            <dl class="space bag" id="recommen">
                <dt>相关推荐</dt>
                <dd><a href="javascript;;" class="bag" id="bjqtj">背景墙</a></dd>
                <!-- <dd><a href="javascript;;" class="bag">风景背景墙</a></dd>
                <dd><a href="javascript;;" class="bag">背景墙实景</a></dd>
                <dd><a href="javascript;;" class="bag">背景墙墙砖</a></dd>
                <dd><a href="javascript;;" class="bag">背景墙墙绘</a></dd>
                <dd><a href="javascript;;" class="bag">墙绘背景墙</a></dd>
                <dd><a href="javascript;;" class="bag">背景墙墙画</a></dd>
                <dd><a href="javascript;;" class="bag">日式背景墙</a></dd>
                <dd><a href="javascript;;" class="bag">个性电视背景墙</a></dd> -->
            </dl>
        </div>
        <div class="mostnew">
            <dl class="space" id="mostNew">
                <dt><a href="javascript;;" id="zx">最新</a></dt>
                <dt><a href="javascript;;" id="zr">最热</a></dt>
            </dl>
        </div>
        <div class="impressImg">
            <div class="impreLeft">
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx1.jpg"><img class="spaceImage" src="images/zx1.jpg"></a>
                        <a href="collectionServlet?image=images/zx1.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">清新北欧风格照片墙设计</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 195px;">
                        <a href="bigImage.jsp?image=images/zx12.jpg"><img class="spaceImage" src="images/zx12.jpg"></a>
                        <a href="collectionServlet?image=images/zx12.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div>
                        <em></em>
                        <a href="javascript;;" class="imageTitle">精选面积101平北欧三居客厅装修图</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx3.jpg"><img class="spaceImage" src="images/zx3.jpg"></a>
                        <a href="collectionServlet?image=images/zx3.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div>
                        <em></em>
                        <a href="javascript;;" class="imageTitle">美式四居背景墙设计图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx4.jpg"><img class="spaceImage" src="images/zx4.jpg"></a>
                        <a href="collectionServlet?image=images/zx4.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div>
                        <em></em>
                        <a href="javascript;;" class="imageTitle">美式四居客厅实景图</a>
                    </div>
                </div>
            </div>
            <div class="impreCenter">
                <div class="item">
                    <span style="height: 435px;">
                        <a href="bigImage.jsp?image=images/zx5.jpg"><img class="spaceImage" src="images/zx5.jpg"></a>
                        <a href="collectionServlet?image=images/zx5.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">精选80平米二居客厅北欧装修实景图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 210px;">
                        <a href="bigImage.jsp?image=images/zx15.jpg"><img class="spaceImage" src="images/zx15.jpg"></a>
                        <a href="collectionServlet?image=images/zx15.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">精选137平米中式别墅客厅装修图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 163px;">
                        <a href="bigImage.jsp?image=images/zx6.jpg"><img class="spaceImage" src="images/zx6.jpg"></a>
                        <a href="collectionServlet?image=images/zx6.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">新造型美学 不需为背景墙发愁 浮窗全场景</a>
                    </div>
                </div>
            </div>
            <div class="impreRl">
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx8.jpg"><img class="spaceImage" src="images/zx8.jpg"></a>
                        <a href="collectionServlet?image=images/zx8.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">热门面积89平北欧二居卧室装修效果图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 192px;">
                        <a href="bigImage.jsp?image=images/zx7.jpg"><img class="spaceImage" src="images/zx7.jpg"></a>
                        <a href="collectionServlet?image=images/zx7.jpg&username=<%=(String)session.getAttribute("login_name")%>" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">精美三居卧室日式装修设计效果图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx16.jpg"><img class="spaceImage" src="images/zx16.jpg"></a>
                        <a href="collectionServlet?image=images/zx16.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">热门90平客厅三居现代装修效果图片欣赏</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx17.jpg"><img class="spaceImage" src="images/zx17.jpg"></a>
                        <a href="collectionServlet?image=images/zx17.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">卧室电视背景墙壁纸效果图欣赏</a>
                    </div>
                </div>
            </div>
            <div class="impreRr">
                <div class="item">
                    <span style="height:435px;">
                        <a href="bigImage.jsp?image=images/zx11.jpg"><img class="spaceImage" src="images/zx11.jpg"></a>
                        <a href="collectionServlet?image=images/zx11.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">热门面积117平美式四居客厅装修设计效果</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx19.jpg"><img class="spaceImage" src="images/zx19.jpg"></a>
                        <a href="collectionServlet?image=images/zx19.jpg&username=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">2018精选大小97平现代三居餐厅装饰图</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="bigImage.jsp?image=images/zx20.jpg"><img class="spaceImage" src="images/zx20.jpg"></a>
                        <a href="collectionServlet?image=images/zx20.jpg&uusername=<%=(String)session.getAttribute("login_name")%>" target="_self" class="filter">★&nbsp;收藏</a>
                        <a href="design.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;" class="imageTitle">热门中式小户型客厅实景图片大全</a>
                    </div>
                </div>
            </div>
        </div>
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
</body>
<script src="js/impression.js"></script>
<script src="js/common.js"></script>
</html>