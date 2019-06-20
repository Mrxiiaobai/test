window.onload=function(){
	 var main=document.getElementById('main');
	    var head=document.getElementById('header');
	    var container=document.getElementById('container');
	    function getScroll() {
	        return{
	            lef:window.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft||0,
	            top:window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0
	        };
	    }

	    window.onscroll=function(){
	    if(getScroll().top>=head.offsetHeight){
	      // My$("navBar").style.position="fixed";
	      // My$("navBar").style.top=0;
	      main.className="main fixed";
	      container.style.marginTop='100px';
	    }else{
	      main.className="main";
	      container.style.marginTop='0';
	    }
	  }
	    
	    var space=document.getElementById('space');
	    var spaceStyle=document.getElementById('spaceStyle');
	    var spaceKind=document.getElementById('spaceKind');
	    var imagePath=document.getElementsByClassName('spaceImage');
	    var imageTitle=document.getElementsByClassName('imageTitle');
	    var mostNew=document.getElementById('mostNew');
	    var recommen=document.getElementById('recommen');
	    var filter = document.getElementsByClassName('filter');
	    var arr=new Array();
		
	    for(var i=1;i<space.children.length;i++){	
	    	space.children[i].onclick=spaceClick;
	    	spaceStyle.children[i].onclick=spaceClick;
	    	spaceKind.children[i].onclick=spaceClick;	
	    }
	    spaceKind.children[12].onclick=spaceClick;
	    mostNew.children[0].onclick=spaceClick;
	    mostNew.children[1].onclick=spaceClick;
	    recommen.children[1].onclick=spaceClick;
	    
	    function spaceClick(){
	    	var id = this.children[0].id;
	    	for(var i=0;i<imagePath.length;i++){ 	    		
	    		imagePath[i].src="images/"+id+""+(i+1)+".jpg";   		
	    		imagePath[i].parentNode.href="bigImage.jsp?image="+imagePath[i].src; 
	    		filter[i].href="bigImage.jsp?image="+imagePath[i].src; 
	    		arr[i]=imagePath[i].parentNode.parentNode.style.height;   		
	    		imagePath[i].style.height=""+arr[i]+"";
	    	}
	    	return false;
	    }
	  
	     
	    
	    function spaceClick2(){
	    	var id = this.children[0].id;
	    	for(var i=0;i<imagePath.length;i++){    		
	    		imagePath[i].src="images/"+id+""+(i+1)+".jpg";	
	    		arr[i]=imagePath[i].parentNode.parentNode.style.height;   		
	    		imagePath[i].style.height=""+arr[i]+"";
	    	}
	    	return false;
	    }
	    
	    var config=[
	        {
	        	imageTitle1:'清新北欧风格照片墙设计',
	        	imageTitle2:'精选面积101平北欧三居客厅装修图',
	        	imageTitle3:'美式四居背景墙设计图片',
	        	imageTitle4:'美式四居客厅实景图',
	        	imageTitle5:'精选80平米二居客厅北欧装修实景图片',
	        	imageTitle6:'精选137平米中式别墅客厅装修图片',
	        	imageTitle7:'新造型美学 不需为背景墙发愁 浮窗全场景',
	        	imageTitle8:'热门面积89平北欧二居卧室装修效果图片',
	        	imageTitle9:'精美三居卧室日式装修设计效果图片',
	        	imageTitle10:'热门90平客厅三居现代装修效果图片欣赏',
	        	imageTitle11:'卧室电视背景墙壁纸效果图欣赏',
	        	imageTitle12:'热门面积117平美式四居客厅装修设计效果',
	        	imageTitle13:'2018精选大小97平现代三居餐厅装饰图',
	        	imageTitle14:'热门中式小户型客厅实景图片大全'
	        	},
	        	{
		        imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
		        },
		        {
		        	imageTitle1:'精选面积99平简约三居客厅装修图片',
			        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
			        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
			        imageTitle4:'精选二居客厅美式装修欣赏图片',
			        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
			        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
			        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
			        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
			        imageTitle9:'精选90平米二居客厅北欧装修效果图',
			        imageTitle10:'2018复式客厅北欧欣赏图片大全',
			        imageTitle11:'2018精选面积105平简约三居客厅实景图',
			        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
			        imageTitle13:'2018北欧二居客厅效果图片欣赏',
			        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			}, {
				imageTitle1:'精选面积99平简约三居客厅装修图片',
		        imageTitle2:'精美面积138平复式客厅北欧实景图片欣赏',
		        imageTitle3:'精选面积110平现代四居客厅装饰图片大全',
		        imageTitle4:'精选二居客厅美式装修欣赏图片',
		        imageTitle5:'2018精选98平米三居客厅简约装修图片大全',
		        imageTitle6:'2018精选107平米3室客厅混搭装修实景图',
		        imageTitle7:'精美92平方三居客厅现代装修设计效果图片',
		        imageTitle8:'热门80平米二居客厅北欧装修设计效果图',
		        imageTitle9:'精选90平米二居客厅北欧装修效果图',
		        imageTitle10:'2018复式客厅北欧欣赏图片大全',
		        imageTitle11:'2018精选面积105平简约三居客厅实景图',
		        imageTitle12:'精选面积90平北欧三居客厅实景图片大全',
		        imageTitle13:'2018北欧二居客厅效果图片欣赏',
		        imageTitle14:'热门大小121平美式四居客厅装饰图片大全'
			},
			    ]
			    
}