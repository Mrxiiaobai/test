<%@page import="java.sql.*" %>
<%@ page contentType="text/html;charset=utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="css/User.css">
		
		<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</head>
	
	<body>
	<% String username=request.getParameter("username");
	try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8",
	            "root",
	            "123456");

	    String sql = "select * from customer where username='"+username+"'";
	   
	    
	    
	    
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    
	    while(rs.next()){
	%>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-2 sideBar">
					<ul id="main-nav" class="nav nav-tabs nav-stacked">
						<li><h2 style="color:white;">个人中心</h2></li>
						<li class="active">
							<a href="UserIndex.jsp?username=<%=username%>" target="main">
								<i class="glyphicon glyphicon-th-large"></i>首页 
							</a>
						</li>
						<li>
							<a href="#systemSetting1" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-cog"></i>
							密码管理
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
							</a>
							<ul id="systemSetting1" class="nav nav-list collapse secondmenu" style="height: 0px;">
								<li><a href="updateSecret.jsp?username=<%=rs.getString(1)%>" target="main"><i class="glyphicon glyphicon-user"></i>修改密码</a></li>
							</ul>
						</li>
						<li>
							<a href="#systemSetting2" class="nav-header collapsed" data-toggle="collapse">
								<i class="glyphicon glyphicon-credit-card"></i>
								订单管理
								<span class="pull-right glyphicon glyphicon-chevron-down"></span>
							</a>
							<ul id="systemSetting2" class="nav nav-list collapse secondmenu" style="height: 0px;">
								<li><a href="UserFree.jsp?username=<%=rs.getString(1)%>" target="main"><i class="glyphicon glyphicon-user"></i>预约订单</a></li>
								<li><a href="collection.jsp?username=<%=rs.getString(1)%>" target="main"><i class="glyphicon glyphicon-user"></i>收藏图片</a></li>
							</ul>
						</li>
						
						<li>
							<a href="#systemSetting4" class="nav-header collapsed" data-toggle="collapse">
								<i class="glyphicon glyphicon-globe"></i>
								退出
								<span class="pull-right glyphicon glyphicon-chevron-down"></span>
							</a>
							<ul id="systemSetting4" class="nav nav-list collapse secondmenu" style="height: 0px;">
								<li><a href="index.jsp"><i class="glyphicon glyphicon-user"></i>进入主页</a></li>
							</ul>
						</li>
				</ul>
				</div>
				<div class="col-lg-10" style="background:#f8f8ff;padding-left:0;">
				<div class="header">
			        <div class="hl">
			            <ul>
			            	<li>尊敬的用户<%=rs.getString(6)%></li>
			            	<li></li>
			                <li>蜗居欢迎你！<a href="index.jsp">返回首页</a></li>
			            </ul>
			        </div>
			    </div>
					<div>
					<iframe name="main" frameborder="0" style="width: 100%;height: 650px;"
							src="UserIndex.jsp?username=<%=username%>">
					</iframe>
				</div>
				</div>
			</div>
		</div> 
		<% 
	    	}
		ps.close();
		conn.close();
		}catch(Exception e){
		e.printStackTrace();
		}%>
</body>
</html>
				