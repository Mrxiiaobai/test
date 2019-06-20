<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<style>
	body{
		background-color:#f8f8ff;;
		text-align:center;
	}
	
	p{
		color:white;
	}
	
	#d1{
		position:absolute;
		left:13%;
		background-color:white;
		width:400px;
		height:370px;
	}
	
	
	
	input{
		width:200px;
		height:30px;
		margin-top:5px;
	}
	
	.submit{
		width:300px;
	}
	
	#main{
		position:absolute;
		top:250px;
		left:50%;
		margin-left:-500px;
	}
	
	.headerModel{
		width:20%;
		height:150px;
		color:black;
		background:white;
		float:left;
		margin-left:50px;
		font-size:20px;
		padding-top:30px;
	}
	.headerModel>p{
		color:black;
	}
	.headerModel>h3{
	}
</style>

<script type="text/javascript" src="js/echarts.min.js"></script>
</head>
<body>
	<h1>装修后台管理系统</h1>
	<div class="headerModel">
		<h3>总访问人数<span><i class="glyphicon glyphicon-user"></i></span></h3>
		<p>32459</p>
	</div>
	<div class="headerModel">
		<h3>营收额<span><i class="glyphicon glyphicon-usd"></i></span></h3>
		<p>890038&nbsp;元</p>
	</div>
	<div class="headerModel">
		<h3>订单总量<span><i class="glyphicon glyphicon-asterisk"></i></span></h3>
		<p>387492</p>
	</div>
	<div class="headerModel">
		<h3>运营时间<span><i class="glyphicon glyphicon-time"></i></span></h3>
		<p id="time"></p>
	</div>
	 <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 1000px;height:400px;"></div> 
    
    <div id="main2" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
    var time = document.getElementById("time");
    var myDate = new Date();
	console.log(myDate.getTime());
    time.innerText =parseInt(myDate.getTime()/36000)-43273689;
/*     	var myChart2=echarts.init(document.getElementById('main2'));
    	option2 = {
    		    title: {
    		        text: '综合能力评测图'
    		    },
    		    tooltip: {
    		        trigger: 'axis'
    		    },
    		    legend: {
    		        x: 'center',
    		        data:['00:00','03:00','06:00','09:00','12:00','15:00','18:00','21:00','24:00']
    		    },
    		    radar: [
    		        {
    		            indicator: [
    		                {text: '00:00', max: 100},
    		                {text: '03:00', max: 100},
    		                {text: '06:00', max: 100},
    		                {text: '09:00', max: 100},
    		                {text: '12:00', max: 100},
    		                {text: '15:00', max: 100},
    		                {text: '18:00', max: 100},
    		                {text: '21:00', max: 100},
    		                {text: '24:00', max: 100}
    		            ],
    		            center: ['50%','40%'],
    		            radius: 100
    		        }
    		    ],
    		    series: [
    		        {
    		            type: 'radar',
    		             tooltip: {
    		                trigger: 'item'
    		            },
    		            itemStyle: {normal: {areaStyle: {type: 'default'}}},
    		            data: [
    		                {
    		                    value: [12,25,38,49,57,72,64,23],
    		                    name: '成交订单'
    		                }
    		            ]
    		        }
    		        ]
    		};
   	
    	myChart2.setOption(option2); */
 
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
      	
		option = {
				title: {
    		        text: '实时成交量'
    		    },
			    xAxis: {
			        type: 'category',
			        boundaryGap: false,
			        data: ['00:00','02:00','04:00','06:00','8:00','10:00','12:00','14:00','16:00','18:00','20:00','22:00','24:00']
			    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [{
			        data: [239,345,528,820, 932, 901, 934, 1290, 1330, 1320,439,201],
			        type: 'line',
			        areaStyle: {}
			    }]
			};
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>  
</body>
</html>