<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>新增销售计划</title>
</head>
<body>
${msg }
	<form action="<%=path%>/ab01Add.html" method="post">
		<table border="1" align="center">
			<caption>
				新增销售计划
				<hr>
			</caption>
			
			<tr>
				<td>项目名称</td>
				<td>
					<e:text name="aab102" required="true" autofocus="true"/>
				</td>
			</tr>
			<tr>
				<td>年份</td>
				<td>
					<e:date name="aab103" required="true"/>
				</td>
				<td>月份</td>
				<td>
					<e:date name="aab104" required="true"/>
				</td>
			</tr>
			<tr>
				<td>计划销售面积</td>
				<td>
					<e:number step="1" name="aab105" required="true"/>
				</td>
				<td>计划销售套数</td>
				<td>
					<e:number step="1" name="aab106" required="true"/>
				</td>
			</tr>	
			<tr>
				<td>计划销售金额</td>
				<td>
					<e:number step="0.01" name="aab107" required="true"/>
				</td>
				<td>计划销售均价</td>
				<td>
					<e:number step="0.01" name="aab108" required="true"/>
				</td>
			</tr>
			<tr>
				<td>计划回款金额</td>
				<td>
					<e:number step="0.01" name="aab109" required="true"/>
				</td>
			</tr>
			<tr>
				<td>备注</td>
				<td>
					<e:textarea rows="5" cols="45" name="aab110"/>
				</td>
			</tr>	
			<td colspan="4" align="center">
				<input type="submit" name="next" value="添加" formaction="<%=path%>/ab01Add.html"/>
			</td>
		</table>
	</form>
	
	
	<form action="<%=path%>/ab01Add.html" method="post">
		<table border="1" align="center">
			<caption>
				销售计划明细表
				<hr>
			</caption>
			<tr>
				<td>序号</td>
				<td>产品类型</td>
				<td>计划销售套数</td>
				<td>计划销售面积</td>
				<td>计划销售金额</td>
				<td>计划销售均价</td>
				<td>计划回款金额</td>
			</tr>
			<tr>
				<td>1</td>
				<td>小高层</td>
				<td><e:number step="1" name="aab203" defval="0" /></td>
				<td><e:number step="1" name="aab204" defval="0" /></td>
				<td><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
			<tr>
				<td>2</td>
				<td>高层</td>
				<td><e:number step="1" name="aab203" defval="0" /></td>
				<td><e:number step="1" name="aab204" defval="0" /></td>
				<td><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
			<tr>
				<td>3</td>
				<td>商铺</td>
				<td style="text-align: right;"><e:number step="1" name="aab203" defval="0" /></td>
				<td align="right"><e:number step="1" name="aab204" defval="0" /></td>
				<td align="right"><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td align="right"><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td align="right"><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
			<tr>
				<td>4</td>
				<td>车位</td>
				<td><e:number step="1" name="aab203" defval="0" /></td>
				<td><e:number step="1" name="aab204" defval="0" /></td>
				<td><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
		</table>	
	</form>
</body>
</html>