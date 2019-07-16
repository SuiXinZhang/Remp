<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>银行放款列表</title>
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
	
	function onEdit(vaaf601)
	{
		var vform = document.getElementById("myform");
	  	 vform.action="<%=path%>/af06FindById.html?aaf601="+vaaf601;
	  	 vform.submit();
	}
	
	function onDel(vaaf601)
    {
  	 var vform = document.getElementById("myform");
  	 vform.action="<%=path%>/af06DelById.html?aaf601="+vaaf601;
  	 vform.submit();
    }

</script>

</head>
<body>
	${msg }
	<form id="myform" action="<%=path%>/af/af06Query.html" method="post">
	
	<!------------------ 查询条件区---------------------->
		<table border="1" align="center" width="95%">
		<caption>
			查询条件
			<hr>
		</caption>
			<tr>
				<td>项目名称</td>
				<td>
					<e:text name="qaaf612"/>
				</td>
				<td>贷款银行</td>
				<td>
					<e:text name="qaaf602"/>
				</td>
			</tr>
			<tr>
				<td>开始日期</td>
				<td>
					<e:date name="bdate"/>
				</td>
				<td>结束日期</td>
				<td>
					<e:date name="edate"/>
				</td>
			</tr>
			<tr>
				<td>放款单号</td>
				<td><e:text name="qaaf604"/></td>
			</tr>
		</table>
		
		<!-----------------数据迭代区 -------------------->
		<table border="1" width="95%" align="center">
			<tr>
			  <td></td>
			  <td>序号</td>
			  <td>项目名称</td>
			  <td>放款银行</td>
			  <td>放款单号</td>
			  <td>放款日期</td>
			  <td>登记人</td>
			  <td>审批人</td>
			  <td></td>
			  <td></td>
			</tr>
	  
	  <c:choose>
	  	<c:when test="${rows!=null }">
	  		<!-- 显示查询到的数据 -->
	  		<c:forEach items="${rows }" var="ins" varStatus="vs">
	  			<tr>
	  				<td>
	  					<input type="checkbox" name="idlist" value="${ins.aaf601 }"
	  						onclick="onSelect(this.checked)" >
	  				</td>
	  				<td>
	  					${vs.count }
	  				</td>
	  				<td>
	  					<a href="#" onclick="onEdit('${ins.aaf601}')">${ins.aaf612 }</a>
	  				</td>
	  				<td>${ins.aaf602 }</td>
	  				<td>${ins.aaf604 }</td>
				    <td>${ins.aaf605 }</td>
				    <td>${ins.aaf603 }</td>
				    <td>${ins.aaf606 }</td>
				    <td></td>
				    <td>
				    	<a href="#" onclick="onDel('${ins.aaf601}')">删除</a>
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
		              formaction="<%=path%>/af/af06Add.jsp">
		       <input type="submit" id="del" name="next" value="删除" 
		              formaction="<%=path%>/af06DelPlan.html"  disabled="disabled">
		    </td>
		  </tr>
		</table>
	  <input type="hidden" name="aaf601" value="${param.aab101 }">
	</form>
</body>
</html>