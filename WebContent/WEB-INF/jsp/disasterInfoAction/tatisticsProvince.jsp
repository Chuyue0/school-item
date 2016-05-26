<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>各省玉米病虫害统计</title>
    <%@ include file="/WEB-INF/jsp/public/common.jspf"%>
    <!-- ECharts单文件引入 -->
    <script src="${pageContext.request.contextPath }/echarts/echarts.min.js"></script>
    
<style type="text/css">
	.lititle{margin:100px 0 30px 500px; font-size:28px; color:#000;}
    .shape{ margin-left:10%; margin-bottom:20px; display:block;}
</style>
</head>
<body>
<div class="lititle">各省玉米病虫害统计</div>
<span class="shape" style="font-size: 20;">柱状图：</span>
<div id="chart3" style="width: 800px;height:600px;margin-left: 10%;"></div><br/><br/><br/><br/>
<span class="shape" style="font-size: 20;">柱状图：</span>
<div id="chart1" style="width: 800px;height:600px;margin-left: 10%;"></div><br/><br/><br/><br/>
<span class="shape" style="font-size: 20;">折线图：</span>
<div id="chart2" style="width: 800px;height:600px;margin-left: 10%;"></div><br/><br/><br/><br/>
<script type="text/javascript">	

	// 基于准备好的dom，初始化echarts实例 
	var myChart3 = echarts.init(document.getElementById('chart3'));
	var arrNum1 = JSON.parse('${resultMap.areaList }') 
	var arrNum2 = JSON.parse('${resultMap.provinceCountList }') 
	var data = [];
	for(var i = 0;i<arrNum1.length;i++){
		var obj1 ={
			value:arrNum2[i],
			name:arrNum1[i]
		}
		data.push(obj1);
	}
	option3 = {
	    title : {
	        text: '病虫害类型所占比例',
	        subtext: '',
	        x:'center'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: JSON.parse('${resultMap.areaList }')
	    },
	    series : [
	        {
	            name: '病虫害所占比例',
	            type: 'pie',	
	            radius : '55%',
	            center: ['50%', '50%'],
	            data: data,
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            },
	        	color:['#2f4554','#c23531'],
	            label: {
	                normal : {
	                    formatter : "{b} : {c} ({d}%)"
	                }
	            }
	        }
	    ]
	};
    myChart3.setOption(option3);
</script>
<script type="text/javascript">
 
        // 基于准备好的dom，初始化echarts实例
        var myChart1 = echarts.init(document.getElementById('chart1'));

        // 指定图表的配置项和数据
       option1 = {
    		   title: {
    	            text: '各省玉米病虫害统计',  
    	        },
			    tooltip : {
			        trigger: 'axis',
			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			        }
			    },
			    legend: {
			        data: ['病虫害统计数']
			    },
			    grid: {
			    	top:'10%',
			        left: '5%',
			        right: '3%',
			        bottom: '1%',
			        containLabel: true 
			    },
			    yAxis:  {
			    	type: 'value'
			    },
			    xAxis: {
			    	type: 'category',
			        data: []
			    },
			    series: [
			        {
			            name: '病虫害统计数',
			            type: 'bar',			//bar：柱状图；line：直线图 
			            barMaxWidth: '100',
			            stack: '总量',
			            label: {
			                normal: {
			                    show: true,
			                    position: 'insideRight'
			                }
			            },
			            data: []
			        }
			    ]
			};
        // 使用刚指定的配置项和数据显示图表。
        myChart1.setOption(option1);
        
        myChart1.setOption({
        	xAxis: {
                data: JSON.parse('${resultMap.areaList }')
            },
            series: [{
                // 根据名字对应到相应的系列
                name: '病虫害统计数',
                data:JSON.parse('${resultMap.provinceCountList }') 
            }]
        });
    </script>
    <script type="text/javascript">
 
        // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('chart2'));

        // 指定图表的配置项和数据
       option2 = {
    		   title: {
    	            text: '各省玉米病虫害统计',  
    	        },
			    tooltip : {
			        trigger: 'axis',
			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			        }
			    },
			    legend: {
			        data: ['病虫害统计数']
			    },
			    grid: {
			    	top:'10%',
			        left: '5%',
			        right: '3%',
			        bottom: '1%',
			        containLabel: true 
			    },
			    yAxis:  {
			    	type: 'value'
			    },
			    xAxis: {
			    	type: 'category',
			        data: []
			    },
			    series: [
			        {
			            name: '病虫害统计数',
			            type: 'line',			//bar：柱状图；line：直线图 
			            //barMaxWidth: '100',
			            stack: '总量',
			            label: {
			                normal: {
			                    show: true,
			                    position: 'insideRight'
			                }
			            },
			            data: []
			        }
			    ]
			};
        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option2);
        
        myChart2.setOption({
        	xAxis: {
                data: JSON.parse('${resultMap.areaList }')
            },
            series: [{
                // 根据名字对应到相应的系列
                name: '病虫害统计数',
                data:JSON.parse('${resultMap.provinceCountList }') 
            }]
        });
    </script>
</body>
</html>
	