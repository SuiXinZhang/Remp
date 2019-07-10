<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>看房查询</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
	</style>
	<script type="text/javascript">
	function onCancel(vaaa801)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad03cancel.html?aaa801="+vaaa801;
  	 vform.submit();
    }
	function onSmallOrder()
	{}
	function onSubscribe(vaaa801)
	{
		var vform = document.getElementById("myform");
	  	vform.action="<%=path%>/ad/ad04addPurchase.html?aaa801="+vaaa801;
	  	vform.submit();
	}
	function onSigning()
	{}
	</script>
</head>
<body>
${msg } 
<form id="myform" action="<%=path %>/ad/ad03query.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 看房记录
	    <hr width="160">
	  </caption>
	  <tr>
	    <td></td>
	  	<td>序号</td>
	  	<td>房间号</td>
	  	<td>房间状态</td>
	  	<td>选房单号</td>
	  	<td>项目排号</td>
	  	<td>客户名称</td>
	  	<td>经办人</td>
	  	<td>选房时间</td>
	  	<td></td>
	  </tr>
	   <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad302 }</td>
				    <td>${ins.caaa805 }</td>
				    <td>${ins.aad303 }</td>
				    <td>${ins.aad304 }</td>
				    <td>${ins.aad305 }</td>
				    <td>${ins.aad306 }</td>
				    <td>${ins.aad307 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aaa801}')">取消选房</a></td>
				    <td><a href="#" onclick="onSmallOrder('${ins.aaa801}')">转小订</a></td>
				    <td><a href="#" onclick="onSubscribe('${ins.aaa801}')">转认购</a></td>
				    <td><a href="#" onclick="onSigning('${ins.aaa801}')">转签约</a></td>
				  </tr>
		      </c:forEach>
		      <!-- 补充空行 -->
		      <c:forEach begin="${fn:length(rows)+1 }" step="1" end="15">
			          <tr>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			          </tr>
		      </c:forEach>
	     </c:when>
	     <c:otherwise>
	        <c:forEach begin="1" step="1" end="15">
	           <tr>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	   </c:choose>
	  </table>
	  <table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="查询">
	    </td>
	  </tr>
	  </table>
</form>
</body>
</html>