<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
	<script src="${pageContext.request.contextPath}/resource/echarts.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ab/menu.jsp"/>
  <div class="layui-body">
    <div style="padding: 15px;">
    	<form class="layui-form" action="<%=path %>/ab/ab05Query.jsp" method="post">
    	<div align="center">
    	
		<div id="main" style="width: 600px;height:400px;"></div>
	
		<table class="layui-table">
				<tr>
					<td>序号</td>
					<td>时间</td>
					<td>来电人数</td>
					<td>来访人数</td>
					<td>营销投入(万元)</td>
				</tr>
		  
		  <c:choose>
			<c:when test="${rows!=null }">
				<!-- 显示查询到的数据 -->
				<c:forEach items="${rows }" var="ins" varStatus="vs">
					<tr>
						<td>
							${vs.count }
						</td>
						<td>
							${ins.aab502 }
						</td>
						<td>${ins.aab504 }</td>
						<td>${ins.aab505 }</td>
						<td>${ins.aab503 }</td>
					</tr>
				</c:forEach>
			</c:when>
		  </c:choose>
		  </table>	
		  <div class="layui-form-item">
				<input type="submit" name="next" value="返回" class="layui-btn">
			</div>
		</div>
	</form>
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
  </div>
</div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    var aab503 = new Array;
    var aab504 = new Array;
    var aab505 = new Array;
    var index = 0;
    <c:choose>
	    <c:when test="${rows!=null }">
		    <c:forEach items="${rows }" var="ins">
			    aab503[index] = ${ins.aab503}
		    	aab504[index] = ${ins.aab504}
		    	aab505[index] = ${ins.aab505}
		    	index = index + 1; 
		    </c:forEach>
	    </c:when>
	    <c:otherwise>
	    </c:otherwise>
    </c:choose>
	

    option = {
    	    title: {
    	        text: '来电来访与营销投入'
    	    },
    	    tooltip: {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['来电总数','来访总数','营销投入']
    	    },
    	    grid: {
    	        left: '3%',
    	        right: '4%',
    	        bottom: '3%',
    	        containLabel: true
    	    },
    	    toolbox: {
    	        feature: {
    	            saveAsImage: {}
    	        }
    	    },
    	    xAxis: {
    	        type: 'category',
    	        boundaryGap: false,
    	        data: [
                <c:forEach items="${rows}" var="g">
                    ["${g.aab502}"],
                </c:forEach>
            ]
    	    },
    	    yAxis: {
    	        type: 'value'
    	    },
    	    series: [
    	        {
    	            name:'来电总数',
    	            type:'line',
    	            stack: '来电数',
    	            data: aab504
    	        },
    	        {
    	            name:'来访总数',
    	            type:'line',
    	            stack: '来访数',
    	            data: aab505
    	        },
    	        {
    	            name:'营销投入',
    	            type:'line',
    	            stack: '营销投入',
    	            data: aab503
    	        },
    	    ]
    	};


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<script>
//JavaScript代码区域
	layui.use(['layer', 'form'], function(){
		  var layer = layui.layer
		  ,form = layui.form;
		  
		});
</script>
</body>
</html>
