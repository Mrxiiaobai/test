window.onload=function(){
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
    
        var pe=document.getElementById('random-pe');
        var ca=document.getElementById('random-ca');
        var sh=document.getElementById('random-sh');
        var zh=document.getElementById('random-zh');
        var bj=document.getElementById('random-bj');
        var shadowBj=document.getElementById('shadow-bj');
        var shadowPe=document.getElementById('shadow-pe');
        var shadowCa=document.getElementById('shadow-ca');
        var shadowSh=document.getElementById('shadow-sh');
        var shadowZh=document.getElementById('shadow-zh');
        
        function random(){
             ca.innerText=parseInt(Math.random()*30000+5000);
             pe.innerText=parseInt(Math.random()*9000+4000);
             sh.innerText=parseInt(Math.random()*6000+5000);
             zh.innerText=parseInt(Math.random()*18000+2000);
             bj.innerText=parseInt(ca.innerText)+parseInt(pe.innerText)+parseInt(sh.innerText)+parseInt(zh.innerText);
        }
        
        timeId=setInterval(random,1000);
        
        var arr=new Array('赵','钱','孙','李','周','吴','郑','王','金','桃','姜','冯','陈','褚','卫','何','吕','施','张');
        var num=new Array('47','38','84','83','76','84','50','51','55','35','86','31','32','37','50','82');
        timeClass=setInterval(function(){
            document.getElementsByClassName('userSpan')[0].innerText=arr[parseInt(Math.random()*(arr.length-1))];
            document.getElementsByClassName('userSpan')[1].innerText=arr[parseInt(Math.random()*(arr.length-1))];
            document.getElementsByClassName('numSpan')[0].innerText=num[parseInt(Math.random()*(num.length-1))];
            document.getElementsByClassName('numSpan')[1].innerText=parseInt(Math.random()*8+1);
            document.getElementsByClassName('numSpan')[2].innerText=num[parseInt(Math.random()*(num.length-1))];
            document.getElementsByClassName('numSpan')[3].innerText=parseInt(Math.random()*8+1);
            document.getElementsByClassName('telSpan')[0].innerText=parseInt(Math.random()*8999+1000);
            document.getElementsByClassName('telSpan')[1].innerText=parseInt(Math.random()*8999+1000);
        },1610);        
        
        function getRadioButtonCheckedValue(tagNameAttr){
            var radio_tag = document.getElementsByName(tagNameAttr);
            for(var i=0;i<radio_tag.length;i++){
                if(radio_tag[i].checked==true){
                    var checkvalue = radio_tag[i].value;            
                    return checkvalue;
                }
            }
        }
        
        var closeBgr=document.getElementById('closeBgr');
        var user=document.getElementById('user');
        var tel=document.getElementById('tel');
        var average=document.getElementById('average');
        var caculate=document.getElementById('caculate');
        var amount = getRadioButtonCheckedValue('radio');
        var telReg = /^[1]{1}[34578]{1}[0-9]{9}$/;
        var cusReg =/^\S[\u4e00-\u9fa5]{2,20}$/;
        var aveReg=/^\S[0-9]*$/;
        var flag1=false;
        var flag2=false;
        var flag3=false;

        user.onblur=function(){
            if(!user.value.match(cusReg) ){
                document.getElementById('hideDiv').style.display='block';
                document.getElementById('showDiv').children[0].innerText='姓名不规范';
                document.getElementById('showDiv').style.display='block';
                flag1=false;
            }
            else{
                flag1=true;
            }
        }      
        
        tel.onblur=function(){
            if(!tel.value.match(telReg) && user.value!==''){
                document.getElementById('hideDiv').style.display='block';
                document.getElementById('showDiv').children[0].innerText='电话号码不符合规范';
                document.getElementById('showDiv').style.display='block';
                flag2=false;
            }else{
                flag2=true;
            }
        }
        
        
        average.onblur=function(){
            if(!average.value.match(aveReg) && user.value!=='' && tel.value!==''){
                document.getElementById('hideDiv').style.display='block';
                document.getElementById('showDiv').children[0].innerText='面积不符合规范';
                document.getElementById('showDiv').style.display='block';
                flag3=false;
            }else{
                flag3=true;
            }
        }           
       
       document.getElementById('closeDiv').onclick=function(){
           clearInterval(timeId);
           document.getElementById('hideDiv').style.display='none';
           document.getElementById('showDiv').style.display='none';
           timeId=setInterval(random,1000);
       }
       
       closeBgr.onclick=function(){
    	   document.getElementById('hideDiv').style.display='none';
    	   document.getElementById('hideBgr').style.display='none';
    	   document.getElementById('hideBgr').style.zIndex='1';
       }
       
        caculate.onclick=function(){        
            var user=document.getElementById('user').value;
            var tel=document.getElementById('tel').value
            var average=document.getElementById('average').value;
            var caculate=document.getElementById('caculate');
            var amount = getRadioButtonCheckedValue('radio');
            if(flag1==false || flag2==false || flag3==false){
                if(tel=='' || user == '' || tel==''){
                    document.getElementById('hideDiv').style.display='block';
                    document.getElementById('showDiv').children[0].innerText='相关信息不能为空';
                    document.getElementById('showDiv').style.display='block';
                }
                else{
                    document.getElementById('hideDiv').style.display='block';
                    document.getElementById('showDiv').children[0].innerText='请填写正确的信息';
                    document.getElementById('showDiv').style.display='block';
                }
                return false;
            }else{
            	document.getElementsByClassName('bglf')[0].submit();

            	document.getElementById('hideBgr').style.display='block';
            	document.getElementById('hideBgr').style.zIndex='999';
            	document.getElementById('hideDiv').style.display='block';
            	if(average<=50 && average>0){                
                    if(amount=='高档'){
                        shadowCa.innerText=parseInt(Math.random()*2500+10000);
                        shadowPe.innerText=parseInt(Math.random()*2500+10000);
                        shadowSh.innerText=parseInt(Math.random()*2500+10000);
                        shadowZh.innerText=parseInt(Math.random()*2500+10000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else if(amount=='中档'){                                   
                        shadowCa.innerText=parseInt(Math.random()*2500+10000);
                        shadowPe.innerText=parseInt(Math.random()*2500+5000);
                        shadowSh.innerText=parseInt(Math.random()*2500+5000);
                        shadowZh.innerText=parseInt(Math.random()*2500+10000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else{ 
                        shadowCa.innerText=parseInt(Math.random()*2500+2500);
                        shadowPe.innerText=parseInt(Math.random()*2500+2500);
                        shadowSh.innerText=parseInt(Math.random()*2500+2500);
                        shadowZh.innerText=parseInt(Math.random()*2500+2500);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }
                    return false;
                }else if(average<=80 && average>50){                
                    if(amount=='高档'){
                      
                        shadowCa.innerText=parseInt(Math.random()*5000+10000);
                        shadowPe.innerText=parseInt(Math.random()*5000+15000);
                        shadowSh.innerText=parseInt(Math.random()*5000+15000);
                        shadowZh.innerText=parseInt(Math.random()*5000+10000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else if(amount=='中档'){             
                        
                        shadowCa.innerText=parseInt(Math.random()*2500+10000);
                        shadowPe.innerText=parseInt(Math.random()*2500+10000);
                        shadowSh.innerText=parseInt(Math.random()*2500+10000);
                        shadowZh.innerText=parseInt(Math.random()*2500+10000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else{
                        
                        shadowCa.innerText=parseInt(Math.random()*2500+5000);
                        shadowPe.innerText=parseInt(Math.random()*2500+10000);
                        shadowSh.innerText=parseInt(Math.random()*2500+5000);
                        shadowZh.innerText=parseInt(Math.random()*2500+10000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }
                    return false;
                }else if(average<=100){
                    if(amount=='高档'){
                        
                        shadowCa.innerText=parseInt(Math.random()*5000+20000);
                        shadowPe.innerText=parseInt(Math.random()*5000+20000);
                        shadowSh.innerText=parseInt(Math.random()*5000+20000);
                        shadowZh.innerText=parseInt(Math.random()*5000+20000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else if(amount=='中档'){
                       
                        shadowCa.innerText=parseInt(Math.random()*2500+20000);
                        shadowPe.innerText=parseInt(Math.random()*2500+20000);
                        shadowSh.innerText=parseInt(Math.random()*2500+10000);
                        shadowZh.innerText=parseInt(Math.random()*2500+20000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else{
  
                        shadowCa.innerText=parseInt(Math.random()*2500+20000);
                        shadowPe.innerText=parseInt(Math.random()*2500+10000);
                        shadowSh.innerText=parseInt(Math.random()*2500+10000);
                        shadowZh.innerText=parseInt(Math.random()*2500+20000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }
                    return false;
                }else if(average<=130){
                    if(amount=='高档'){

                        shadowCa.innerText=parseInt(Math.random()*5000+30000);
                        shadowPe.innerText=parseInt(Math.random()*5000+30000);
                        shadowSh.innerText=parseInt(Math.random()*5000+30000);
                        shadowZh.innerText=parseInt(Math.random()*5000+40000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else if(amount=='中档'){

                        shadowCa.innerText=parseInt(Math.random()*5000+20000);
                        shadowPe.innerText=parseInt(Math.random()*10000+30000);
                        shadowSh.innerText=parseInt(Math.random()*10000+30000);
                        shadowZh.innerText=parseInt(Math.random()*5000+20000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else{

                        shadowCa.innerText=parseInt(Math.random()*5000+20000);
                        shadowPe.innerText=parseInt(Math.random()*5000+20000);
                        shadowSh.innerText=parseInt(Math.random()*5000+20000);
                        shadowZh.innerText=parseInt(Math.random()*5000+20000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }
                    return false;
                }else if(average<=160){
                    if(amount=='高档'){

                        shadowCa.innerText=parseInt(Math.random()*5000+60000);
                        shadowPe.innerText=parseInt(Math.random()*5000+60000);
                        shadowSh.innerText=parseInt(Math.random()*5000+60000);
                        shadowZh.innerText=parseInt(Math.random()*5000+60000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else if(amount=='中档'){
    
                        shadowCa.innerText=parseInt(Math.random()*10000+50000);
                        shadowPe.innerText=parseInt(Math.random()*10000+50000);
                        shadowSh.innerText=parseInt(Math.random()*10000+50000);
                        shadowZh.innerText=parseInt(Math.random()*10000+50000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else{
           
                        shadowCa.innerText=parseInt(Math.random()*5000+45000);
                        shadowPe.innerText=parseInt(Math.random()*5000+45000);
                        shadowSh.innerText=parseInt(Math.random()*5000+45000);
                        shadowZh.innerText=parseInt(Math.random()*5000+45000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }
                    return false;
                }else if(average<=200){
                    if(amount=='高档'){
         
                        shadowCa.innerText=parseInt(Math.random()*10000+80000);
                        shadowPe.innerText=parseInt(Math.random()*10000+80000);
                        shadowSh.innerText=parseInt(Math.random()*10000+80000);
                        shadowZh.innerText=parseInt(Math.random()*10000+80000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else if(amount=='中档'){

                        shadowCa.innerText=parseInt(Math.random()*10000+70000);
                        shadowPe.innerText=parseInt(Math.random()*10000+70000);
                        shadowSh.innerText=parseInt(Math.random()*10000+70000);
                        shadowZh.innerText=parseInt(Math.random()*10000+70000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }else{
    
                        shadowCa.innerText=parseInt(Math.random()*10000+60000);
                        shadowPe.innerText=parseInt(Math.random()*10000+60000);
                        shadowSh.innerText=parseInt(Math.random()*10000+60000);
                        shadowZh.innerText=parseInt(Math.random()*10000+60000);
                        shadowBj.innerText=parseInt(parseInt(shadowCa.innerText)+parseInt(shadowPe.innerText)+parseInt(shadowSh.innerText)+parseInt(shadowZh.innerText));
                    }
                    
                }else {
                    document.getElementById('hideDiv').style.display='block';
                    document.getElementById('showDiv').children[0].innerText='面积过大， 相关事宜装修管家稍后联系您';
                    document.getElementById('showDiv').style.display='block';
                }
                return false;
            }
           
            
        };    
    }; 