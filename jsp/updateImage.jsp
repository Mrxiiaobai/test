<%@ page import="com.cu.dao.indexCompanyDao" %>
<%@ page import="com.cu.util.indexCompany" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    //获取前端页面传递的参数
    String user = request.getParameter("user");   //该参数由stuList页面的<a href="updateStu.jsp?sid=stu.getStudentId()">传递过来
   //创建StudentDao对象
    indexCompanyDao indDao = new indexCompanyDao();
    indexCompany ind = indDao.getIndByIndName(user);

    if(ind != null){
        request.setAttribute("ind",ind);
    }
	session.setAttribute("companyName", user);
%>

<html>
<head>
    <title>修改Logo</title>
     <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<form action="uploadServlet" method="post"  enctype="multipart/form-data">
    <table align="center" border="1px solid black" class="table table-striped">
    
        <tr>
            <td>公司名</td>
            <%-- <td><input type="text" name="companyName"  readOnly="true"  value="<%=ind.getCompanyName()%>"> </td> --%>
            <td><p class="form-control-static" name="companyName" ><%=ind.getCompanyName()%></p></td>
        </tr>
        <tr>
            <td>公司logo</td>
            <td>
            	<img src="<%=ind.getLogo()%>" id="logoImage" style="width:50px;height:50px;">
            	<input type="file" name="companyImage" value="选择背景" id="logoFile" >
            	
            </td>
        </tr>
            <td colspan="2">
                <input type="submit" name="submit" value="保存" class="btn btn-primary">
                <a href="indexList.jsp" class="btn btn-success">取消</a>
            </td>
        </tr>
    </table>
</form>
<script>


	var logoFile = document.getElementById("logoFile");
	var logoImage = document.getElementById("logoImage");
	logoFile.addEventListener("change",function(e){
		
		  var reader = new FileReader();
		  reader.readAsDataURL(logoFile.files[0]);//发起异步请求
		  reader.onload = function(){
		    //读取完成后，将结果赋值给img的src
		    logoImage.src = this.result;
		    
		  }
		})
		
	var bgcFile = document.getElementById("bgcFile");
	var bgcImage = document.getElementById("bgcImage");
	
	bgcFile.addEventListener("change",function(){
	  var reader = new FileReader();
	  reader.readAsDataURL(bgcFile.files[0]);//发起异步请求
	  reader.onload = function(){
	    //读取完成后，将结果赋值给img的src
	    bgcImage.src = this.result;
	  }
	})
	
	function getObjectURL(file) {  
     var url = null;  
     if (window.createObjcectURL != undefined) {  
         url = window.createOjcectURL(file);  
     } else if (window.URL != undefined) {  
         url = window.URL.createObjectURL(file);  
     } else if (window.webkitURL != undefined) {  
         url = window.webkitURL.createObjectURL(file);  
     }  
     return url;  
 }
	
</script>
</body>
</html>