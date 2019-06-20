
	 var hid = document.getElementById('hid');
	 var username = hid.innerText; 
	 console.log(username);
	 var hr = document.getElementsByClassName("hr")[0];
	 var ul = hr.children[0];
	 var li = ul.children[7];
	 var a = li.children[0];
	 if(username=="null"){
		 a.onclick=function(){
			 alert("请先登录");
			 return false;
		 }
	 }else{
		 
	 }
	 if(username!=="null"){
		 console.log(username);
	 }

	var filter = document.getElementsByClassName('filter');
	if(username=="null"){
		for(var i=0;i<filter.length;i++){
			filter[i].onclick=function(){
				 alert("请先登录");
				 return false;	
			};
		}
	}else{
		for(var i=0;i<filter.length;i++){
			filter[i].onclick=function(){
				alert("收藏成功");
			};
		}
		
	}