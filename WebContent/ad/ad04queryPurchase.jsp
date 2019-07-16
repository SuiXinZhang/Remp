<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>

<html>
<head>
<title>查询订单</title>
	<style type="text/css">
	tr 
	{
		height: 25px;
	}
    </style>
    <script type="text/javascript">
    function onSelect(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad04findByIdPurchase.html?aad401="+vaad401;
  	 vform.submit();
    }
    function onDel(vaad401)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/ad/ad04deleteByIdPurchase.html?aad401="+vaad401;
  	 vform.submit();
    }
    </script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/ad/ad04queryPurchase.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 订单查询
	    <hr width="160">
	  </caption>
	  <tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	  <tr>
	    <td>房间</td>
	    <td>
	      <e:text name="qaad403"/>
	    </td>
	    <td>客户名</td>
	    <td>
	      <e:text name="qaad402"/>
	    </td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	    <td>序号</td>
	    <td>房间</td>
	    <td>客户名称</td>
	    <td>订单状态</td>
	    <td>签署日期</td>
	    <td>协议总价</td>
	    <td>协议币种</td>
	    <td>业务员</td>
	    <td>订单类型</td>
	    <td>付款方式</td>
	    <td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td><input type="hidden" name="aad301" value="${ins.aad301 }"></td>
				    <td>${vs.count }</td>
				    <td>${ins.aad403}</td>
				    <td><a href="#" onclick="onSelect('${ins.aad401}')">${ins.aad402 }</a></td>
				    <td>${ins.aad422 }</td>
				    <td>${ins.aad415 }</td>
				    <td>${ins.aad410 }</td>
				    <td>${ins.baad411 }</td>
				    <td>${ins.aad419 }</td>
				    <td>${ins.daad418 }</td>
				    <td>${ins.caad404 }</td>
				    <td><a href="#" onclick="onDel('${ins.aad401}')">删除</a></td>
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