<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cu.util.indexCompany" %>
<%@ page import="com.cu.util.customer" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
 <head>
  <title>首页</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">  
  <link rel="stylesheet" type="text/css" href="css/index.css"> 
  <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
 </head>
 <base target="_blank">
 <body>
     <%
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
            "root",
            "123456");
	
    String sql = "select * from indexCompany";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    List<indexCompany> indexlist = new ArrayList<indexCompany>();
    while(rs.next()){
    	indexCompany ind = new indexCompany();
    	ind.setCompanyName(rs.getString(1));
    	ind.setLogo(rs.getString(2));
    	ind.setCompanyImage(rs.getString(3));
    	ind.setCompanyTel(rs.getString(4));
    	ind.setPlanNumber(rs.getString(5));
    	ind.setDecorationNumber(rs.getString(6));
    	indexlist.add(ind);
    }

    if(rs != null){
        rs.close();
    }
    if(ps != null){
        ps.close();
    }
    if(conn != null){
        conn.close();
    }

    	request.setAttribute("list",indexlist);
        List<indexCompany> list = (List<indexCompany>)request.getAttribute("list");
        for(indexCompany ind : list){
    %>
            <div id="hideDIV">
                <p class='getCompanyName getData'><%=ind.getCompanyName()%></p>
                <p class='getLogo getData'><%=ind.getLogo()%></p>
                <p class='getCompanyImage getData'><%=ind.getCompanyImage()%></p>
                <p class='getCompanyTel getData'><%=ind.getCompanyTel()%></p>
                <p class='getPlanNumber getData' ><%=ind.getPlanNumber()%></p>
                <p class='getDecorationNumber getData'><%=ind.getDecorationNumber()%></p>
               <p class='getData'><a href="updateIndex.jsp?user=<%=ind.getCompanyName()%>" class="btn btn-primary">修改</a> | <a href="DelInd.jsp?user=<%=ind.getCompanyName()%>" class="btn btn-success">删除</a></p>
             </div> 
            
    <%    }
    %>
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
                <li><a href="plan.jsp?username=<%=(String)session.getAttribute("login_name")%>">免费设计</a></li>
                <li><a href="design.jsp?username=<%=(String)session.getAttribute("login_name")%>">免费报价</a></li>
                <li><a href="impression.jsp?username=<%=(String)session.getAttribute("login_name")%>">效果图</a></li>
                <li><a href="index.jsp?username=<%=(String)session.getAttribute("login_name")%>" style="background: orange;width: 130px;
            height: 50px;border-radius: 15px;">首页</a></li>
            </ul>
        </div>
     </div>
     <div class="itw" id="itw">
        <ul>
            <li class="dis"><a href="#"><img src="images/bj_banner.jpg"></a></li>
            <li><a href="#"><img src="https://back.tobosu.com/banner_img/2019-02-16/thumb_5c67d9143e2c7.jpg"></a></li>
            <li><a href="#"><img src="https://back.tobosu.com/banner_img/2019-03-01/thumb_5c78a5429a9d1.png"></a></li>
            <li><a href="#"><img src="https://back.tobosu.com/banner_img/2018-12-22/thumb_5c1da3a6ebd3c.png"></a></li>
            <li><a href="#"><img src="https://back.tobosu.com/banner_img/2019-01-03/thumb_5c2d69433db21.jpg"></a></li>
            <li><a href="#"><img src="https://back.tobosu.com/banner_img/2019-02-22/thumb_5c6f9c3e47281.jpg"></a></li>
        </ul>
        <ol>
        </ol>
        <div id="arr"><span id="left">&lt;</span><span id="right">&gt;</span></div>
     </div>
     <div class="itwimg">
        <img src="images/bj_bottom_img.jpg" style="margin: 0 auto;display: block;max-width: 100%;">
     </div>
     <div class="wrapper">
        <div class="wrapper-header">
            <h2>
                <span class="line"></span>
                <a href="javascript;;">深圳装修公司</a>
                <span class="line"></span>
            </h2>
            <span style="font-size: 18px;display:block;padding: 6px 0;">甄选优质深圳装修公司，丰富选择实现理想家</span>
        </div>
        <div class="wrapper-body">
        	<div class="fl">
                <a href="buildCompany.jsp?companyname=檀梓装饰"  class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p></p>
                        <ul>
                            <li>设计案例：<span class="orange"></span></li>
                            <li>装修工地：<span class="orange"></span></li>
                        </ul>
                        <span class="phone">免费预约：</span>
                    </div>
                </a>
                <a href="buildCompany.jsp?companyname=英凰装饰&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>英凰装饰</p>
                        <ul>
                            <li>设计案例：<span class="orange">78</span></li>
                            <li>装修工地：<span class="orange">3</span></li>
                        </ul>
                        <span class="phone">免费预约：131-4343-5504</span>
                    </div>
                </a>
            </div>
 
        	
            
            <div class="fl">
                <a href="buildCompany.jsp?companyname=易居装饰&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>易居装饰</p>
                        <ul>
                            <li>设计案例：<span class="orange">2298</span></li>
                            <li>装修工地：<span class="orange">2730</span></li>
                        </ul>
                        <span class="phone">免费预约：131-9284-7849</span>
                    </div>
                </a>
                <a href="buildCompany.jsp?companyname=谷一装饰设计&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>谷一装饰设计</p>
                        <ul>
                            <li>设计案例：<span class="orange">1985</span></li>
                            <li>装修工地：<span class="orange">136</span></li>
                        </ul>
                        <span class="phone">免费预约：171-5087-6202</span>
                    </div>
                </a>
            </div>
            
            <div class="fl">
                <a href="buildCompany.jsp?companyname=檀梓装饰&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>优耐特装饰</p>
                        <ul>
                            <li>设计案例：<span class="orange">294</span></li>
                            <li>装修工地：<span class="orange">310</span></li>
                        </ul>
                        <span class="phone">免费预约：130-4981-1613</span>
                    </div>
                </a>
                <a href="buildCompany.jsp?companyname=尚匠装饰&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>尚匠装饰</p>
                        <ul>
                            <li>设计案例：<span class="orange">3834</span></li>
                            <li>装修工地：<span class="orange">1853</span></li>
                        </ul>
                        <span class="phone">免费预约：130-4982-2671</span>
                    </div>
                </a>
            </div>
            
            <div class="fl">
                <a href="buildCompany.jsp?companyname=洛阳十佳装饰&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>洛阳十佳装饰</p>
                        <ul>
                            <li>设计案例：<span class="orange">41</span></li>
                            <li>装修工地：<span class="orange">13</span></li>
                        </ul>
                        <span class="phone">免费预约：131-4343-7443</span>
                    </div>
                </a>
                <a href="buildCompany.jsp?companyname=洛阳林峰装饰&username=<%=(String)session.getAttribute("login_name")%>" class="company">
                    <div class="companydiv">
                        <div class="companyimg">
                            <img src="">
                        </div>
                        <div class="companylogo">
                            <img src="">
                        </div>
                    </div>
                    <div class="companybottom">
                        <p>洛阳林峰装饰</p>
                        <ul>
                            <li>设计案例：<span class="orange">2848</span></li>
                            <li>装修工地：<span class="orange">2571</span></li>
                        </ul>
                        <span class="phone">免费预约：131-4344-0240</span>
                    </div>
                </a>
            </div>
        </div>
     </div>
     <div class="bottom">
            <ul>
                <li><a href="impression.jsp">装修效果图</a></li>
                <li><a href="http://www.zhuangxiubaike.cn/">装修百科</a></li>
                <li><a href="http://www.zhuangxiubaike.cn/cooperation.html">加入我们</a></li>
                <li><a href="http://www.zhuangxiubaike.cn/aboutus.html">关于我们</a></li>
                <li><a href="http://www.zhuangxiubaike.cn/contactus.html">联系我们</a></li>
                <li><a href="http://www.zhuangxiubaike.cn/service.html">用户注册协议</a></li>
            </ul>
        </div>
        <p style="text-align: center;line-height: 10px;margin-bottom: 30px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p> 
</div>
	<script src="js/common.js"></script>
    <script>
        var itw=document.getElementById('itw');
        var imgWidth=itw.offsetWidth;
        var ulObj=itw.children[0];
        var list=ulObj.children;
        var olObj=itw.children[1];
        var olList=olObj.children;
        var arr=document.getElementById('arr');
        var index=0;

        for(var i=0;i<list.length;i++){
            var liObj=document.createElement("li");
            olObj.appendChild(liObj);   
            liObj.setAttribute("index",i);
            liObj.onmouseover=function(){
                index=this.getAttribute("index");
                for(var j=0;j<olObj.children.length;j++){
                    olObj.children[j].removeAttribute("class");
                    list[j].removeAttribute("class");
                }
                this.className="mov";
                list[index].className='dis';
            }   
        }

        olList[0].className='mov';
        //点击右键，图片变换
        document.getElementById("right").onclick=function(){ 
            if(index==list.length-1){
                index=0;
                list[index].className="dis";
                list[list.length-1].removeAttribute("class");
                olList[index].className='mov';
                olList[list.length-1].className='';
            }else{
                index++;
                for (var i = 0; i < list.length; i++) {
                    list[i].removeAttribute("class");
                    olList[i].removeAttribute("class");
                }
                list[index].className="dis";
                olList[index].className='mov';
            }   
        }
        //点击左键
        document.getElementById('left').onclick=function(){
            if(index==0){
                index=list.length-1;
                list[0].removeAttribute("class");
                list[index].className="dis";
                olList[index].className='mov';
                olList[0].className='';
            }else{
                index--;
                for (var i = 0; i < list.length; i++) {
                    list[i].removeAttribute("class");
                    olList[i].removeAttribute("class");
                }
                list[index].className="dis";
                olList[index].className='mov';
            }
        }
        var getData = document.getElementsByClassName('getData');
        var hideDIV = document.getElementById('hideDIV');
        hideDIV.style.display="none";
        for(var i=0;i<getData.length;i++){
        	getData[i].style.display="none";
        }
        var getCompanyName = document.getElementsByClassName('getCompanyName');
        var getLogo = document.getElementsByClassName('getLogo');
        var getCompanyImage = document.getElementsByClassName('getCompanyImage');
        var getCompanyTel = document.getElementsByClassName('getCompanyTel');
        var getDecorationNumber = document.getElementsByClassName('getDecorationNumber');
        var getPlanNumber = document.getElementsByClassName('getPlanNumber');
        var company = document.getElementsByClassName('company');
        
        var aName = document.getElementsByClassName('aName');
        console.log(aName);
        var phone = document.getElementsByClassName('phone');
        var orange = document.getElementsByClassName('orange');
        var companybottom = document.getElementsByClassName('companybottom');
        var companylogo = document.getElementsByClassName('companylogo');
        var companyimg = document.getElementsByClassName('companyimg');
        function pipeiImage(ele,oth){
        	for(var i=0;i<ele.length;i++){
        		ele[i].children[0].src=oth[i].innerText;
        		console.log(ele[i].children[0].src);
            }
        	
        }
        function pipeiText(ele,oth){
        	for(var i=0;i<ele.length;i++){
        		if(ele[i].children[0]){
        			ele[i].children[0].innerText=oth[i].innerText;
        		}else{
        			ele[i].innerText=oth[i].innerText;
        		}      		
            }
        }
        function pipeiSpan(ele,oth,str){
        	for(var i=0;i<ele.length;i++){
        		if(i%2==1){
        			ele[i].innerText=oth[(i-1)/2].innerText;
        		}else{
        			ele[i].innerText=str[i/2].innerText;
        		}
            }
        }
      		
      			var  username= "<%=(String)session.getAttribute("login_name")%>";
      			for(var i=0;i<company.length;i++){
                	company[i].href="buildCompany.jsp?companyname="+getCompanyName[i].innerText+"&username="+username;
                }
      		
        	
        	
        
        
        
        pipeiImage(companyimg,getCompanyImage);
        pipeiImage(companylogo,getLogo);
        pipeiText(companybottom,getCompanyName);
        pipeiText(phone,getCompanyTel);
        
        
        pipeiSpan(orange,getDecorationNumber,getPlanNumber);
    </script>
 </body>
</html>
