<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
 <head>
  <title>注册成功</title>  
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/> 
  <link rel="stylesheet" type="text/css" href="css/csschushihua.css">  
 </head>
 <style type="text/css">
 	h1{
 		font-size: 30px;
 		text-align: center;
 		margin-top: 10%;
 	}
 </style>
 <body>
 	<h1>注册成功，<span id="time" style="color: red;text-decoration: underline;">5</span>秒后自动跳转到登录页面，如未自动跳转，请点击<a href="login.jsp" style="text-decoration: underline;color: blue;">跳转</a></h1>

 	<script type="text/javascript">
 		window.onload=function(){
 			var time=document.getElementById('time');
	 		var number=parseInt(time.innerText);
	 		timeId=setInterval(function () {
	 			number--;
	 			console.log(number);
	 			time.innerText=number;
	 			if(number==0){
	 				clearInterval(timeId);
	 				location.href='login.jsp';
	 			}
	 			
	 		},1000);
 		}
 		
 	</script>
 </body>
</html>
