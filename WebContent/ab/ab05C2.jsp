<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% String path=request.getContextPath(); %>
<html>
<head>
    <title>ECharts</title>
    <meta charset="utf-8">
    <!-- 引入 ECharts 文件 -->
    <script src="${pageContext.request.contextPath}/resource/echarts.js"></script>
</head>

<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
	
    var aab503 = new Array;
    var aab506 = new Array;
    var index = 0;
    <c:choose>
    <c:when test="${rows!=null }">
	    <c:forEach items="${rows }" var="ins">
		    aab503[index] = ${ins.aab503}
	    	aab506[index] = ${ins.aab506}
	    	index = index + 1; 
	    </c:forEach>
    </c:when>
    <c:otherwise>
    </c:otherwise>
    </c:choose>
	

    option = {
    	    title: {
    	        text: '营销分析'
    	    },
    	    tooltip: {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['销售签约额','营销投入']
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
    	        axisLabel:{interval:0},
    	        data:[
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
    	            name:'销售签约额',
    	            type:'line',
    	            stack: '销售',
    	            data: aab506
    	        },
    	        {
    	            name:'营销投入',
    	            type:'line',
    	            stack: '投入',
    	            data: aab503
    	        },
    	    ]
    	};


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

	<form action="<%=path %>/ab/ab05Query.jsp" method="post">
	
	<table border="1" width="95%" align="center">
			<tr>
			  <td>序号</td>
			  <td>时间</td>
			  <td>销售签约额</td>
			  <td>营销投入</td>
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
	  				<td>${ins.aab506 }</td>
				    <td>${ins.aab503 }</td>
	  			</tr>
	  		</c:forEach>
	  	</c:when>
	  </c:choose>
	  
	  <tr>
		<td colspan="5" align="center">
			<input type="submit" name="next" value="返回">
		</td>
	  </tr>
	  
	  </table>
	</form>
	
</body>
</html>