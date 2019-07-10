<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>新增营销方案</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>

<script type="text/javascript">
	window.onload=function()
	{
		var obj = document.getElementById("layer");
		if(${empty param.aab101})
		{
			obj.style.display = "none";
		} 
	}
</script>

</head>
<body>
${msg }
	<form action="<%=path%>/ab01Add.html" method="post">
		<table border="1" align="center" width="90%">
			<caption>
				${empty param.aab101?'新增':'修改' }
				${empty param.aab101 }
				销售计划
				<hr width="160">
			</caption>
			
			<tr>
				<td>方案名称</td>
				<td>
					<e:text name="aab302" required="true" autofocus="true" defval="${ins.aab102 }"/>
				</td>
			</tr>
			<tr>
				<td>年份</td>
				<td>
					<e:date name="aab103" required="true" defval="${ins.aab103 }"/>
				</td>
				<td>月份</td>
				<td>
					<e:date name="aab104" required="true" defval="${ins.aab104 }"/>
				</td>
			</tr>
			<tr>
				<td>计划销售面积</td>
				<td>
					<e:number step="1" name="aab105" required="true" defval="${ins.aab105 }"/>
				</td>
				<td>计划销售套数</td>
				<td>
					<e:number step="1" name="aab106" required="true" defval="${ins.aab106 }"/>
				</td>
			</tr>	
			<tr>
				<td>计划销售金额</td>
				<td>
					<e:number step="0.01" name="aab107" required="true" defval="${ins.aab107 }"/>
				</td>
				<td>计划销售均价</td>
				<td>
					<e:number step="0.01" name="aab108" required="true" defval="${ins.aab108 }"/>
				</td>
			</tr>
			<tr>
				<td>计划回款金额</td>
				<td>
					<e:number step="0.01" name="aab109" required="true" defval="${ins.aab109 }"/>
				</td>
			</tr>
			<tr>
				<td>备注</td>
				<td>
					<e:textarea rows="5" cols="45" name="aab110" defval="${ins.aab110 }"/>
				</td>
			</tr>	
			<td colspan="4" align="center">
				<input type="submit" name="next" value="${empty param.aab101?'添加':'修改' }" 
				formaction="<%=path%>/${empty param.aab101?'ab01Add':'ab01Modify' }.html"/>
				<input type="submit" name="next" value="返回"
				formaction="<%=path %>/ab/ab01Query.html"
				formnovalidate="formnovalidate">
				<input id="layer" type="submit" name="next" value="编辑计划明细"
					formaction="ab02Query.html">	
		 	</td>
		</table>
		<input type="hidden" name="aab101" value="${param.aab101 }">
	</form>
	
		</table>	
	</form>
</body>
</html>