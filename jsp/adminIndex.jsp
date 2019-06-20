<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>后台管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/adminIndex.css">
		<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</head>
	<body class="layui-layout-body">
		
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-2 sideBar">
					<ul id="main-nav" class="nav nav-tabs nav-stacked">
						<li><h2 style="color:white;">装修管理系统</h2></li>
						<li class="active">
							<a href="welcome.jsp" target="main">
								<i class="glyphicon glyphicon-th-large"></i>首页 
							</a>
						</li>
						<li>
							<a href="#systemSetting1" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-cog"></i>
							用户管理
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
							</a>
							<ul id="systemSetting1" class="nav nav-list collapse secondmenu" style="height: 0px;">
								<li><a href="adminList.jsp" target="main"><i class="glyphicon glyphicon-user"></i>用户列表</a></li>
							</ul>
						</li>
						<li>
							<a href="#systemSetting2" class="nav-header collapsed" data-toggle="collapse">
								<i class="glyphicon glyphicon-credit-card"></i>
								首页管理
								<span class="pull-right glyphicon glyphicon-chevron-down"></span>
							</a>
							<ul id="systemSetting2" class="nav nav-list collapse secondmenu" style="height: 0px;">
								<li><a href="indexList.jsp" target="main"><i class="glyphicon glyphicon-user"></i>首页数据</a></li>
							</ul>
						</li>
						<li>
							<a href="#systemSetting3" class="nav-header collapsed" data-toggle="collapse">
								<i class="glyphicon glyphicon-globe"></i>
								用户日志
								<span class="pull-right glyphicon glyphicon-chevron-down"></span>
							</a>
							<ul id="systemSetting3" class="nav nav-list collapse secondmenu" style="height: 0px;">
								<li><a href="designList.jsp" target="main"><i class="glyphicon glyphicon-user"></i>用户数据日志</a></li>
								<li><a href="Userlog.jsp" target="main"><i class="glyphicon glyphicon-user"></i>日志表</a></li>
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
				<div class="col-lg-10" style="background:#f8f8ff;">
					<div>
					<iframe name="main" frameborder="0" style="width: 100%;height: 670px;"
							src="welcome.jsp">
					</iframe>
				</div>
				</div>
			</div>
		</div> 
</body>
</html>
				