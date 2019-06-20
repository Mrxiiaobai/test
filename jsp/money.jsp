<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
 <head>
  <title>装修成这样要花多少钱</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">  
 </head>
 <style type="text/css">
 	h1{
 		font-size: 30px;
 		text-align: center;
 		margin-top: 10%;
 	}
 	.container{
 		width: 1220px;
		height: auto;
		margin: auto;
 	}
 	.impressImg{
 		width: 100%;
 		margin-top: 20px;
 	}
 	.impressImg:after{
 		content: '';
 		display: block;
 		clear: both;
 		height: 0;
 		visibility: hidden;
 	}
 	.impreLeft,.impreCenter,.impreRl{
 		float: left;
 		width: 290px;
 		margin-right:20px; 
 	}
 	.impreRr{
 		float: left;
 		width: 290px;
 	}
 	.item{
 		margin-top: 20px;
 		/*overflow: hidden;*/
 	}
 	.item>div{
 		float: left;
 		width: 268px;
	    height: 40px;
	    border-left: 1px solid #eaeaea;
	    border-right: 1px solid #eaeaea;
	    border-bottom: 1px solid #eaeaea;
	    padding-left: 20px;
	    line-height: 40px;
 	}
 	.item span{
 		position: relative;
 		display: block;
 		width: 290px;
 	}
 	.item span:hover .filter{
		display: block;
 	}
 	.item span:hover .collection{
		display: block;
 	}
 	.item span a:first-child{	
 		display: block;
	    cursor: pointer;
 	}
 	.item span img{
 		width: 290px;
 	}	
	.filter,.collection{
		position: absolute;
	    /*display: block;*/
	    bottom: 0;
	    z-index: 133;
	    height: 34px; 
	    line-height: 34px;
	    display: none;
	   /* width: 200px;*/
	}
	.filter{ 
		padding: 0 12px;
	    color: #fff;
	    text-align: left;
	    background: #000;
	    opacity: .6;
	    left: 0;
	    z-index: 133;
	}
	.collection{
		width: 200px;
	    right: 0;
	    color: #fff;
	    z-index: 134;
	    line-height: 34px;
	    text-align: center;
	    background-color: rgba(232,112,39,.9);
	}
	.item:after{
		content: '';
 		display: block;
 		clear: both;
 		height: 0;
 		visibility: hidden;
	}
 </style>
 <body>
	<div class='container'>
 	<h1>装修成这样，大概花费<span id="money" style="color: red;text-decoration: underline;"></span>元钱，具体详情请联系电话18438620365,点击<a href="impression.jsp" style="text-decoration: underline;color: blue;">返回</a>回到效果图页面</h1>
	 <div class="impressImg">
            <div class="impreLeft">
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2017/02/23/20170223162234-555e1383_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">清新北欧风格照片墙设计</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 195px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2017/05/13/20170513232548-26bd7298_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div>
                        <em></em>
                        <a href="javascript;;">精选面积101平北欧三居客厅装修图</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2018/03/16/20180316122013-cfcb522f_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div>
                        <em></em>
                        <a href="javascript;;">美式四居背景墙设计图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2018/03/16/20180316121956-205b3ccd_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div>
                        <em></em>
                        <a href="javascript;;">美式四居客厅实景图</a>
                    </div>
                </div>
            </div>
            <div class="impreCenter">
                <div class="item">
                    <span style="height: 435px;">
                        <a href="javascript;;"><img src="https://pic1.to8to.com/smallcase/2017/04/24/20170424105412-8d47d34b_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">精选80平米二居客厅北欧装修实景图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 210px;">
                        <a href="javascript;;"><img src="https://pic1.to8to.com/smallcase/2018/07/14/20180714100801-539591ce_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">精选137平米中式别墅客厅装修图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 163px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/1812/20/20181220_b6df9841f94b7a050365bfdfy5bl8iop_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">新造型美学 不需为背景墙发愁 浮窗全场景</a>
                    </div>
                </div>
            </div>
            <div class="impreRl">
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2017/02/23/20170223162308-3d08d611_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">热门面积89平北欧二居卧室装修效果图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 192px;">
                        <a href="javascript;;"><img src="images/rltwo.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">精美三居卧室日式装修设计效果图片</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2015/06/19/20150619152750-29cc658d_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">热门90平客厅三居现代装修效果图片欣赏</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2013/09/13/20130913100529-c4f71edb_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">卧室电视背景墙壁纸效果图欣赏</a>
                    </div>
                </div>
            </div>
            <div class="impreRr">
                <div class="item">
                    <span style="height:435px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2018/03/16/20180316122026-583ee60c_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">热门面积117平美式四居客厅装修设计效果</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2015/06/19/20150619153038-ff1eafb0_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">2018精选大小97平现代三居餐厅装饰图</a>
                    </div>
                </div>
                <div class="item">
                    <span style="height: 193px;">
                        <a href="javascript;;"><img src="https://pic.to8to.com/smallcase/2014/08/25/20140825115603-42a01c70_284.jpg"></a>
                        <a href="javascript;;" class="filter">★&nbsp;收藏</a>
                        <a href="money.jsp" class="collection">装修成这样要花多少钱?</a>
                    </span>
                    <div class="clear">
                        <em></em>
                        <a href="javascript;;">热门中式小户型客厅实景图片大全</a>
                    </div>
                </div>
            </div>
        </div>
       </div>
 	<script type="text/javascript">
 		window.onload=function(){
 			var money=document.getElementById('money');
	 		var number=parseInt(money.innerText);
	 		money.innerText=parseInt(Math.random()*35000+15000);
 		}
 		
 	</script>
 </body>
</html>
