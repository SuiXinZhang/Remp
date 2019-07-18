<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
<script type="text/javascript">
function onEdit(vaad501)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/ad/ad05findById.html?aad501="+vaad501;
	 vform.submit();
}
function onCancel(vaad501)
{
	 var vform = document.getElementById("myform");
	 vform.action="<%=path%>/ad/ad05cancelReserve.html?aad501="+vaad501;
	 vform.submit();
}
</script>
</head>
<body>
${msg }
<form id="myform" action="<%=path %>/ad/ad05query.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 预留客户记录
	    <hr width="160">
	  </caption>
	<tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	<tr>
	<td>客户名</td>
	<td><e:text name="qaad508"/></td>
	<td>房间</td>
	<td><e:text name="qaad502"/></td>
	</tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td></td>
	  	<td>序号</td>
	  	<td>客户名称</td>
	  	<td>房间</td>
	  	<td>签署日期</td>
	  	<td>失效日期</td>
	  	<td>业务员</td>
	  	<td>预留状态</td>
	  	<td>备注</td>
	  	<td></td>
	  </tr>
	  <c:choose>
	     <c:when test="${rows!=null }">
	         <!-- 显示实际查询到的数据 -->
		     <c:forEach items="${rows }" var="ins" varStatus="vs">
	    	   	  <tr>
				    <td></td>
				    <td>${vs.count }</td>
				    <td><a href="#" onclick="onEdit('${ins.aad501}')">${ins.aad508 }</a></td>
				    <td>${ins.aad502 }</td>
				    <td>${ins.aad503 }</td>
				    <td>${ins.aad504 }</td>
				    <td>${ins.aad505 }</td>
				    <td>${ins.aad507 }</td>
				    <td>${ins.aad506 }</td>
				    <td><a href="#" onclick="onCancel('${ins.aad501}')">取消预留</a></td>
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