function My$(id){
	return document.getElementById(id);
}

//兼容代码，设置文本框值
function setInnerText(element,text){//element是元素标签，text是要设置的文本
	//设置任意文本框的值
	if(typeof element.textContent=="undefind"){
		element.innerText=text;
	}else{
		element.textContent=text;
	}
}
//获取任意标签中间的文本内容，获取兼容代码
function getInnerText(element){
	if(typeof element.textContent=="undefind"){
		return element.innerText;
	}else{
		return element.textContent;
	}
}

//节点兼容代码,获取任意一个父级元素的第一个子级元素
function getFirstElementChild(element){
	if(element.firstElementChild){//-true--支持
		return element.firstElementChild;
	}else{
		var node=element.firstChild;//第一个节点
		while(node&&node.nodeType!==1){
			node=node.nextSibling;
		}
		return node;
	}
}

//获取任意一个父级元素的最后一个子级元素
function getLastElementChild(element){
	if(element.lastElementChild){//-true--支持
		return element.lastElementChild;
	}else{
		var node=element.lastChild;//第一个节点
		while(node&&node.nodeType!=1){
			node=node.previousSibling;
		}
		return node;
	}
}

//兼容性代码,点击事件addEventListener、attachEvent
function addEventListener(){
	//判断浏览器是否支持这个方法
	if(element.addEventListener){
		element.addEventListener(type,fn,false);
	}else if(element.attachEvent){
		element.attachEvent("on"+type,fn);
	}else{
		element["on"+type]=fn;
	}
}

//解绑事件兼容性代码
//为任意的一个元素，解绑对应的事件
function removeEventListener(){
	//判断浏览器是否支持这个方法
	if(element.removeEventListener){
		element.removeEventListener(type,fnName,false);
	}else if(element.detachEvent){
		element.attachEvent("on"+type,fnNmae);
	}else{
		element["on"+type]=null;
	}
}

		//封装动画函数==匀速动画
		function animate(element,target){
			clearInterval(element.timeId);//先清理定时器
			element.timeId=setInterval(function(){
				//每次移动10
				var step=10;
				//获取现在div的位置
				var current=element.offsetLeft;
				step=current<target?step:-step;
				//每次移动的距离
				current+=step;
				if(Math.abs(target-current)>Math.abs(step)){
					element.style.left=current+"px";
				}else{
					clearInterval(element.timeId);
					element.style.left=target+"px";
				}
			},20);
		}



		//变速动画
		function animate2(element, target) {
	    //清理定时器
	    clearInterval(element.timeId);
	    element.timeId = setInterval(function () {
	      //获取元素的当前位置
	      var current = element.offsetLeft;
	      //移动的步数
	      var step = (target - current) / 10;
	      step = step > 0 ? Math.ceil(step) : Math.floor(step);
	      current += step;
	      element.style.left = current + "px";
	      if (current == target) {
	        //清理定时器
	        clearInterval(element.timeId);
	      }
	      //测试代码:
	      console.log("目标位置:" + target + ",当前位置:" + current + ",每次移动步数:" + step);
	    }, 20);
	  }


	  //获取任意一个元素的一个样式属性的值，兼容代码
	  function getStyle(element,attr){
	  	//判断浏览器是否支持
	  	// if(window.getComputedStyle){
	  	// 	return window.getComputedStyle(element,null)[attr];
	  	// }else{
	  	// 	return element.currentStyle[attr];
	  	// }
	  		return window.getComputedStyle? window.getComputedStyle(element,null)[attr]:element.currentStyle[attr];
	  }

	  //element--元素
	  //attr--属性名字
	  //target--目标位置
	  //变速动画函数封装，增加任意一个属性
		function animate3(element,attr, target) {
	    //清理定时器
	    clearInterval(element.timeId);
	    element.timeId = setInterval(function () {
	      //获取元素的当前位置
	      var current = parseInt(getStyle(element,attr));
	      //移动的步数
	      var step = (target - current) / 10;
	      step = step > 0 ? Math.ceil(step) : Math.floor(step);
	      current += step;
	      element.style[attr] = current + "px";
	      if (current == target) {
	        //清理定时器
	        clearInterval(element.timeId);
	      }
	      //测试代码:
	      console.log("目标位置:" + target + ",当前位置:" + current + ",每次移动步数:" + step);
	    }, 20);
	  }

	  //变速动画函数封装，增加任意多个属性
	  function animate4(element,json) {
	    //清理定时器
	    clearInterval(element.timeId);
	    element.timeId = setInterval(function () {
	    	var flag=true;//假设全部到达目标
	    	for(var attr in json){
	    		//获取元素的当前位置
	     	 	var current = parseInt(getStyle(element,attr));
	     		 //移动的步数
	     		 //当前的属性对应的目标值
	     		var target=json[attr];
	      		var step = (target - current) / 10;
			    step = step > 0 ? Math.ceil(step) : Math.floor(step);
			    current += step;
			    element.style[attr] = current + "px";
			  	if(current !=target){
			  		flag=false;
			  	}
	    	}
	    	 if (flag) {
			    	//清理定时器
			        clearInterval(element.timeId);
			    }
	     //测试代码:
	      console.log("目标位置:" + target + ",当前位置:" + current + ",每次移动步数:" + step);
	    }, 20);
	  }

	   //变速动画函数封装，增加任意多个属性,增加回调函数
	  function animate5(element,json,fn) {
	    //清理定时器
	    clearInterval(element.timeId);
	    element.timeId = setInterval(function () {
	    	var flag=true;//假设全部到达目标
	    	for(var attr in json){
	    		//获取元素的当前位置
	     	 	var current = parseInt(getStyle(element,attr));
	     		 //移动的步数
	     		 //当前的属性对应的目标值
	     		var target=json[attr];
	      		var step = (target - current) / 10;
			    step = step > 0 ? Math.ceil(step) : Math.floor(step);
			    current += step;
			    element.style[attr] = current + "px";
			  	if(current !=target){
			  		flag=false;
			  	}
	    	}
	    	 if (flag) {
			    	//清理定时器
			        clearInterval(element.timeId);
			        //所有属性到达目标后使用，前提存在这个函数
			        //主要用于多个动画
			        if (fn) {
			        	fn();
			        }
			    }
	     //测试代码:
	      console.log("目标位置:" + target + ",当前位置:" + current + ",每次移动步数:" + step);
	    }, 20);
	  }

	  //变速动画函数封装，增加任意多个属性,增加回调函数，增加透明度，层级
	  function animate6(element,json,fn) {
	    clearInterval(element.timeId);//清理定时器
    //定时器,返回的是定时器的id
    element.timeId = setInterval(function () {
      var flag = true;//默认,假设,全部到达目标
      //遍历json对象中的每个属性还有属性对应的目标值
      for (var attr in json) {
        //判断这个属性attr中是不是opacity
        if (attr == "opacity") {
          //获取元素的当前的透明度,当前的透明度放大100倍
          var current = getStyle(element, attr) * 100;
          //目标的透明度放大100倍
          var target = json[attr] * 100;
          var step = (target - current) / 10;
          step = step > 0 ? Math.ceil(step) : Math.floor(step);
          current += step;//移动后的值
          element.style[attr] = current / 100;
        } else if (attr == "zIndex") { //判断这个属性attr中是不是zIndex
          //层级改变就是直接改变这个属性的值
          element.style[attr] = json[attr];
        } else {
          //普通的属性
          //获取元素这个属性的当前的值
          var current = parseInt(getStyle(element, attr));
          //当前的属性对应的目标值
          var target = json[attr];
          //移动的步数
          var step = (target - current) / 10;
          step = step > 0 ? Math.ceil(step) : Math.floor(step);
          current += step;//移动后的值
          element.style[attr] = current + "px";
        }
        //是否到达目标
        if (current != target) {
          flag = false;
        }
      }
      if (flag) {
        //清理定时器
        clearInterval(element.timeId);
        //所有的属性到达目标才能使用这个函数,前提是用户传入了这个函数
        if (fn) {
          fn();
        }
      }
      //测试代码
      // console.log("目标:" + target + ",当前:" + current + ",每次的移动步数:" + step);
    }, 20);
  }