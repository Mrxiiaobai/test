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
      		
      			
      		
        	
        	
        
        
        
        pipeiImage(companyimg,getCompanyImage);
        pipeiImage(companylogo,getLogo);
        pipeiText(companybottom,getCompanyName);
        pipeiText(phone,getCompanyTel);
        
        
        pipeiSpan(orange,getDecorationNumber,getPlanNumber);