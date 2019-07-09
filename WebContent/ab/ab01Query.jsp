<%@page import="com.remp.web.impl.ab.Ab01QueryServlet"%>
<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>查询计划列表</title>
<style type="text/css">
	tr
	{
		height: 25px;
	}
</style>

<script type="text/javascript">

	var count=0;
	function onSelect(vstate)
	{
		vstate?count++:count--;
		var vdel=document.getElementById("del");
		vdel.disabled=(count==0);
	}
	
	function onEdit(vaab101)
	{
		var vform = docunment.getElementById("myform");
		vform.action="<%=path%>/findByIdPlan.html?aab101="+vaab101;
		vform.submit();
	}
	
	function onDel(vaab101)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/delByIdPlan.html?aab101="+vaab101;
  	 vform.submit();
    }

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/ab01Query.html" method="post">
	
	<!------------------ 查询条件区---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			查询条件
			<hr>
		</caption>
			<tr>
				<td>项目名称</td>
				<td>
					<e:text name="qaab102"/>
				</td>
			</tr>
			<tr>
				<td>年份</td>
				<td><e:text name="year"/></td>
				<td>月份</td>
				<td><e:text name="month"/></td>
			</tr>
		</table>
		
		<!-----------------数据迭代区 -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>序号</td>
			  <td>项目名称</td>
			  <td>时间</td>
			  <td>计划销售面积</td>
			  <td>计划销售套数</td>
			  <td>计划销售金额</td>
			  <td>计划销售均价</td>
			  <td>计划回款金额</td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- 显示查询到的数据 -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="idlist" value="${ins.aab101 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>
	  					<a href="#" onclick="onEdit('${ins.aab101 }')">${ins.aab102 }</a>
	  				</td>
	  				<td>${ins.aab103 }</td>
				    <td>${ins.aab105 }</td>
				    <td>${ins.aab106 }</td>
				    <td>${ins.aab107 }</td>
				    <td>${ins.aab108 }</td>
				    <td>${ins.aab109 }</td>
				    <td>
				    	<a href="#" onclick="onDel('${ins.aab101}')">删除</a>
				    </td>
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
	             <td></td>
	           </tr>
	        </c:forEach>
	     </c:otherwise>
	  </c:choose>
	  </table>
	  
	  	<!-- 功能按钮区 -->
		<table border="1" width="95%" align="center">
		  <tr>
		    <td align="center">
		       <input type="submit" name="next" value="查询">
		       <input type="submit" name="next" value="添加" 
		              formaction="<%=path%>/ab01Add.jsp">
		       <input type="submit" id="del" name="next" value="删除" 
		              formaction="<%=path%>/delEmp.html"  disabled="disabled">
		    </td>
		  </tr>
		</table>
	  
	</form>
</body>
</html>