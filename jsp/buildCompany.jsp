<%@page import="java.sql.*" %>
<%@ page contentType="text/html;charset=utf-8" %>

<!DOCTYPE html>
<html>
 <head>
  <title>装修公司简介</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">
  <link rel="stylesheet" type="text/css" href="css/buildCompany.css">

 </head>
 <base target="_blank">
 <body>
<% 	String companyName=request.getParameter("companyname");
	String username=request.getParameter("username");

	try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
	            "root",
	            "123456");

	    String sql = "select * from companydata where companyname='"+companyName+"'";
	    String aa = "select * from indexCompany where companyname='"+companyName+"'";
	    
	    PreparedStatement bb = conn.prepareStatement(aa);
	    ResultSet ind = bb.executeQuery();
	    
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    
	    while(rs.next()&& ind.next()){
	%>
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
                <li><a href="User.jsp?username=<%=request.getParameter("username")%>"  style="color: red;"><i class="glyphicon glyphicon-user"></i>个人中心</a></li>
            </ul>
        </div>
    </div>
    <div class="main">
        <img src="images/logo.png">
        <div class="mr">
            <ul>    
                <li><a href="plan.jsp">免费设计</a></li>
                <li><a href="design.jsp">免费报价</a></li>
                <li><a href="impression.jsp">效果图</a></li>
                <li><a href="index.jsp">首页</a></li>
            </ul>
        </div>
    </div>
    <div class="company">
    	<div class="cont">
			<div class="fl">
    		<img src="<%=ind.getString(3)%>" name="companyimage">
    		</div>
    		<div class="fr">
	    	<h1><%=rs.getString(6)%></h1>
	    	<p>
	    		设计案例：<span class="companyIntroduction"><%=ind.getString(5)%></span>
	    	</p>
	    	<p>
	    		装修工地：<span class="companyIntroduction"><%=ind.getString(6)%></span>
	    	</p>
	    	<p>
	    		电&nbsp;&nbsp;话：<span class="companyIntroduction dvTel"><%=ind.getString(4)%></span><a href="freeDomServlet?username=<%=request.getParameter("username")%>&companyname=<%=rs.getString(6)%>&companyimage=<%=ind.getString(3)%>&companyTel=<%=ind.getString(4)%>" target="_self" class="btn btn-warning"  id="free" style="margin-left:50px;">免费预约</a>
	    	</p>
	    	<p>
	    		地&nbsp;&nbsp;址：<span class="companyIntroduction"><%=rs.getString(5)%></span>
	    	</p>
			
			<div class="service">
				<h2>服务概况</h2>
				<p>营业时间:<span class="companyIntroduction"><%=rs.getString(1)%></span></p>
				<p>承接价位:<span class="companyIntroduction"><%=rs.getString(2)%></span></p>
				<p>服务区域:<span class="companyIntroduction"><%=rs.getString(3)%></span></p>
			</div>	
		</div>
			
    </div>
    	<div class="ff">
    		<div class="introduction">
	    		<h2>公司简介</h2>
	    		<p><span class="companyIntroduction"><%=rs.getString(4)%></span></p>
	   		</div>  
    	</div>
    	<div class="speacil">
    		<h2>特色服务</h2>
    		<span><i class="glyphicon glyphicon-ok">质量保障体系</i></span>
    		<span><i class="glyphicon glyphicon-ok">六大设计系统</i></span>
    		<span><i class="glyphicon glyphicon-ok">智能家居整装</i></span>
    		<span><i class="glyphicon glyphicon-ok">装修保</i></span>
    		<span><i class="glyphicon glyphicon-ok">建行0元起</i></span>
    		<br>
    		<span><i class="glyphicon glyphicon-ok">免费服务</i></span>
    		<span><i class="glyphicon glyphicon-ok">3D云设计</i></span>
    		<span><i class="glyphicon glyphicon-ok">免费上门量房</i></span>
    		<span><i class="glyphicon glyphicon-ok">免费报价</i></span>
    		<span><i class="glyphicon glyphicon-ok">免费设计</i></span>
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
    <p style="text-align: center;line-height: 10px;">&nbsp;<br/>Copyright © 2012-2017 wowoju.net 窝窝居装修网-中国最专业的装修平台 版权所有</p> 
</div>
	<% 
	    	}
		ps.close();
		conn.close();
		}catch(Exception e){
		e.printStackTrace();
		}%>
 

    

<script>
	var username = "<%=request.getParameter("username")%>";
	console.log(username);
	
	var free = document.getElementById('free');
	free.onclick=function(){
		if(username =="null"){
			alert('请先登录');
			return false;
		}else{
			alert('预约成功');
		}
	}
</script>
</body>
</html>
