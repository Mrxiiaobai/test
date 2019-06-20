window.onload=function(){
	   var config = [
	   {
		   width: 460,
		   top: 50,
		   left: 80,
		   opacity: 0.5,
		   zIndex: 2
	    },//0
	    {
	        width: 470,
	        top: 130,
	        left: 450,
	        opacity: 1,
	        zIndex: 3
	     },//1
	     {
	        width: 470,
	        top: 50,
	        left: 800,
	        opacity: 0.5,
	        zIndex: 2
	     },//2
	   ];
	   
	   var sub=My$("caculate");
	   var flag=true;//假设所有的动画执行完毕===锁死
	   var list=document.getElementsByClassName('li');
	   var arrow=document.getElementById('arrow');
	   function assign(){
	       for (var i = 0; i < list.length; i++) {
	            animate6(list[i],config[i],function(){
	            flag=true;
	           });
	            list[i].style.display='block';
	       }
	   } 
	        
	        

	        var index=1;
	      //右边按钮
	      My$("arrRight").onclick=function(){
	        if(flag){
	          flag=false;  
	          index--;
	          //删除第一个，追加到最后
	         if(index<0){
	            index=2;
	            for (var i = 0; i < list.length; i++) {
	                list[i].children[0].style.display='none';
	            }
	            list[index].children[0].style.display='block';
	         }else{
	            for (var i = 0; i < list.length; i++) {
	                list[i].children[0].style.display='none';
	            }    
	            list[index].children[0].style.display='block';
	            
	         }
	          config.push(config.shift());//shift删除，push添加
	          assign();//重新分配
	        }
	      }
	      //左边按钮
	      My$("arrLeft").onclick=function(){
	        if(flag){
	          flag=false;
	           index++;
	          //删除第一个，追加到最后
	         if(index>2){
	            index=0;
	            for (var i = 0; i < list.length; i++) {
	                list[i].children[0].style.display='none';
	            }
	            list[index].children[0].style.display='block';
	         }else{
	            for (var i = 0; i < list.length; i++) {
	                list[i].children[0].style.display='none';
	            }
	            
	            list[index].children[0].style.display='block';
	         }
	          //删除最后一个，追加到第一个
	          config.unshift(config.pop());//unshift加，pop最后
	          assign();
	        }
	      }

	      
	      
	      var close=document.getElementsByClassName('close');
	      for(var i=0;i<close.length;i++){
	        close[i].onclick=function(){
	            for (var i = 0; i < list.length; i++) {
	                list[i].style.display='none';
	            }
	            list[0].style.display='block';
	         	list[0].style.left='80px';
	         	list[0].style.width='460px';
	         	list[0].style.top='50px';   	
	         	list[0].style.opacity='1';
	         	arrow.style.display='none';
	        }  
	    }
	    
	    function getRadioButtonCheckedValue(tagNameAttr){
	        var radio_tag = document.getElementsByName(tagNameAttr);
	        for(var i=0;i<radio_tag.length;i++){
	            if(radio_tag[i].checked==true){
	                var checkvalue = radio_tag[i].value;            
	                return checkvalue;
	            }
	        }
	    }
	    
	   
	    var tel = document.getElementById('tel');
    	var caculate = document.getElementById('caculate');
    	var amount = getRadioButtonCheckedValue('radio');
	   	var telReg = /^[1]{1}[34578]{1}[0-9]{9}$/;
	   	var aveReg =/^[0-9]*$/;
	   	var flag = true;	   	
	   	
	    document.getElementById('closeDiv').onclick=function(){
			   document.getElementById('hideDiv').style.display='none';
			   document.getElementById('showDiv').style.display='none';
		   }	   
	   	
	   	tel.onblur=function(){
	   		if(!tel.value.match(telReg) && tel.value!=='' && average.value==''){
	   			document.getElementById('hideDiv').style.display='block';
		 		document.getElementById('showDiv').children[0].innerText='电话号码不符合规范';
		 		document.getElementById('showDiv').style.display='block';
	   			flag=false;
	   		}else{
	   			flag=true;
	   		}
	   	}
	   	
	   	
	   	
	   	var selectPro=document.getElementById('selectPro');
		var selectCity=document.getElementsByClassName('selectCity');
		
		selectPro.onchange=function(){
			var index=selectPro.selectedIndex ;
			var optionValue=selectPro.options[index].value;
			if(optionValue=='河南'){
				for(var i=0;i<selectCity.length;i++){
					selectCity[i].style.display='none';
				}
				selectCity[0].style.display='block';
			}
			if(optionValue=='安徽'){
				for(var i=0;i<selectCity.length;i++){
					selectCity[i].style.display='none';
				}
				selectCity[1].style.display='block';
			}
			if(optionValue=='江苏'){
				for(var i=0;i<selectCity.length;i++){
					selectCity[i].style.display='none';
				}
				selectCity[2].style.display='block';
			}
		}
	   	
		var orange = document.getElementById('orange');
		 var houseStyle =document.getElementById('houseStyle');
		    var random =document.getElementById('random');
		    var ys = document.getElementById('ys');
		    var randomImage= document.getElementsByClassName('randomImage');
		    
		    
	    caculate.onclick=function(){
	    	var tel=document.getElementById('tel').value;    	
	    	var caculate=document.getElementById('caculate');
	    	var amount = getRadioButtonCheckedValue('radio');
	    	if(tel=='' || flag==false){
	    		document.getElementById('hideDiv').style.display='block';
	    		document.getElementById('showDiv').children[0].innerText='相关信息不能为空';
	    		document.getElementById('showDiv').style.display='block';
	    	}else{
	    		if(houseStyle.value=="one" && houseStyle.value=="two" && houseStyle.value=="three" && houseStyle.value=="four"){
		    		if(ys.value == "mone" && ys.value == "mtwo" && ys.value == "mthree" && ys.value == "mfour"){
		    			random.innerText = parseInt(Math.random()*40000+10000);
		    			for(var i=0;i<randomImage.length;i++){
		    				var number = parseInt(Math.random()*13+1);
		    				randomImage[i].src= "bo"+number+".jpg";
		    			}
		    		}
		    	}else{
		    		random.innerText = parseInt(Math.random()*30000+50000);
		    		for(var i=0;i<randomImage.length;i++){
	    				var number = parseInt(Math.random()*13+1);
	    				randomImage[i].src= "images/bo"+number+".jpg";
	    			}
		    	}
	    		list[1].children[0].style.display='block';
	            arrow.style.display='block';
	            assign();
	    	}
	    	return false;
	    };
	    
	   
	    
	    
	    
	}; 