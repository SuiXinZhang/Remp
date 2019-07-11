<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
${msg }
	<form action="<%=path %>/ab04Edit.html" method="post">
		<table border="1" align="center" width="90%">
			<caption>
				编辑营销活动
				<hr>
			</caption>
			<tr>
				<td>活动主题</td>
				<td>
					<e:text name="aab402" required="true" autofocus="true" defval="${ins.aab402 }"/>
				</td>
				<td>活动类型</td>
				<td>
					<e:text name="aab403" required="true" defval="${ins.aab403 }"/>
				</td>
			</tr>
			<tr>	
				<td>活动时间</td>
				<td>
					<e:date name="aab404" required="true" defval="${ins.aab404 }"/>
				</td>
				<td>发生费用</td>
				<td>
					<e:number step="0.01" name="aab405" required="true" defval="${ins.aab405 }"/>
				</td>
			</tr>
			<tr>
				<td>活动描述</td>
				<td>
					<e:textarea rows="5" cols="45" name="aab406" defval="${ins.aab406 }"/>
				</td>
			</tr>
			<tr>
			<td colspan="4" align="center">
				<input type="submit" name="next" value="完成"
				formaction="<%=path%>/ab04Edit.html?aab301=${param.aab301}">
			</td>
		</tr>
		</table>
		<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>

</body>
</html>