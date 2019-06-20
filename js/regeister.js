		var $selectPro=$('#selectPro');
		var flag=true;
    	var userReg = /^[a-zA-Z]([-_a-zA-Z0-9]{3,20})$/;
    	var passReg = /^[\w\?%&=\-_]{4,20}$/;
    	var cusReg =/^[\u4e00-\u9fa5]{2,20}$/;
		var telReg = /^[1]{1}[34578]{1}[0-9]{9}$/;
		var yzm;
		var flag6=false;			
		var flag5=false;
		var flag4=false;
		var flag3=false;
		var flag2=false;
		var flag1=false;

		$selectPro.on('change',function(){
			if(this.value=='安徽'){
				$('.selectCity').css('display','none');
				$('.selectCity:eq(1)').css('display','block');
			}
			if(this.value=='河南'){
				$('.selectCity').css('display','none');
				$('.selectCity:eq(0)').css('display','block');
			}
			if(this.value=='江苏'){
				$('.selectCity').css('display','none');
				$('.selectCity:eq(2)').css('display','block');
			}
		})
		
		$('#passagagin').blur(function(){

			var res=$('#password').val();
			if($('#passagagin').val()!==res){
				$('#againSpan').text('密码确认错误').css('color','red');
				flag1=false;
			}else{
				$('#againSpan').text('正确').css('color','green');
				flag1=true;
			}
		})
		
		$('#username').blur(function(){

			var res=$('#username').val();
			if(!res.match(userReg)){
				$('#userSpan').text('不符合要求!').css("color","red");
				flag2=false;
			}else{
				$('#userSpan').text('正确').css("color","green");
				flag2=true;
			}
		})
		$('#username').focus(function(){
			$('#userSpan').text('3-20位字母、数字或下划线组合，首字符必须为字母').css('color','#666');
		})
		
		$('#password').blur(function(){

			var res=$('#password').val();
			if(!res.match(passReg)){
				$('#passSpan').text('密码长度不符合要求!').css("color","red");
				flag3=false;
			}else{
				$('#passSpan').text('正确').css("color","green");
				flag3=true;
			}
		})
		$('#password').focus(function(){
			$('#passSpan').text('建议密码由六位以上数字、字母和特殊字符组成').css('color','#ccc');
		})
		
		
		
		$('#password').focus(function(){
			$('#passSpan').text('建议密码由六位以上数字、字母和特殊字符组成').css('color','#ccc');
		})
		
		
		
		$('#customername').blur(function(){

			var res=$('#customername').val();
			if(!res.match(cusReg)){
				$('#customerSpan').text('姓名不符合要求!').css("color","red");
				flag4=false;
			}else{
				$('#customerSpan').text('正确').css("color","green");
				flag4=true;
			}
		})
		$('#customername').focus(function(){
			$('#customerSpan').text('请输入姓名').css('color','#ccc');
		})
		
		$('#tel').blur(function(){

			var res=$('#tel').val();
			if(!res.match(telReg)){
				$('#telSpan').text('请输入正确的手机号码!').css("color","red");
				flag5=false;
			}else{
				$('#telSpan').text('正确').css("color","green");
				flag5=true;
			}
		})
		$('#tel').focus(function(){
			$('#telSpan').text('请输入手机号码').css('color','#ccc');
		})	
		
		$('#getYzm').click(function(){
			var $text=$('#randomNumber');
			$text.text(parseInt(Math.random()*8999+1000));
			$text.css('display','block');
			yzm=parseInt($text.text());
		})
		
		$('#yzm').blur(function(){

			var res=parseInt($('#yzm').val());
			if(res!==yzm){
				$('#yzmSpan').text('验证码错误!').css("color","red");
				flag6=false;
				
			}else{
				$('#yzmSpan').text('正确').css("color","green");
				flag6=true;
			}
		})
		
		function checkip(){	
			if(flag==true){
					if($('#yzm')){
						if($('#username').val()=='' || $('#password').val()=='' 
							|| $('#companyname').val()=='' || $('#passagain').val()==''
							|| $('#customernam').val()=='' || $('#yzm').val()==''
							|| $('#tel').val()==''){				
							alert('请输入注册信息');
		    				return false;	
						}else if(flag1==false || flag2==false || flag3==false || flag4==false || flag5==false || flag6==false){
							alert('请输入正确信息');
							return false;
						}
					}else{
						if($('#username').val()=='' || $('#password').val()=='' 
							|| $('#companyname').val()=='' || $('#passagain').val()==''
							|| $('#customernam').val()=='' 
							|| $('#tel').val()==''){				
							alert('请输入注册信息');
		    				return false;	
						}else if(flag1==false || flag2==false || flag3==false || flag4==false || flag5==false){
							alert('请输入正确信息');
							return false;
						}
					}
				
			}else{
	    			return true;
	    		}
	}
